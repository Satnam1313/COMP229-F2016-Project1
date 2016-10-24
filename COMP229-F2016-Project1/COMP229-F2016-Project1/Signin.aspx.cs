using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COMP229_F2016_Project1
{
    public partial class Signin : System.Web.UI.Page
    {
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("/Admin");
                }
                label_register_message.Text = "";
                label_signin_message.Text = "";
            }
        }
        // Verifies if the user is valid or not and
        protected void Button_signin_Click(object sender, EventArgs e)
        {
            label_register_message.Text = "";
            label_signin_message.Text = "";
            string user_username = TextBox_signin_email.Text;
            string user_password = TextBox_signin_password.Text;
            dataTable = sp_user_read_by_email_and_password(user_username, user_password);
            if (dataTable.Rows.Count > 0)
            {
                // Create a new ticket used for authentication
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                1, // Ticket version
                dataTable.Rows[0]["user_id"].ToString(), // Username associated with ticket
                DateTime.Now, // Date/time issued
                DateTime.Now.AddMinutes(10), // Date/time to expire
                true, // "true" for a persistent user cookie
                FormsAuthentication.FormsCookiePath);// Path cookie valid for

                // Encrypt the cookie using the machine key for secure transport
                string hash = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie(
                FormsAuthentication.FormsCookieName, // Name of auth cookie
                hash); // Hashed ticket

                // Set the cookie's expiration time to the tickets expiration time
                if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

                // Add the cookie to the list for outgoing response
                Response.Cookies.Add(cookie);

                // Redirect to requested URL, or homepage if no previous page
                // requested
                string returnUrl = Request.QueryString["ReturnUrl"];
                if (returnUrl == null) returnUrl = "/Admin";

                // Don't call FormsAuthentication.RedirectFromLoginPage since it
                // could
                // replace the authentication ticket (cookie) we just added
                Response.Redirect(returnUrl);
            }
            else
            {
                // Never tell the user if just the username is password is incorrect.
                // That just gives them a place to start, once they've found one or
                // the other is correct!
                label_signin_message.Text = "Invalid email or password.";
            }
        }

        //Get Data
        private DataTable GetData(SqlCommand cmd)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(strConnString);
                SqlDataAdapter sda = new SqlDataAdapter();
                cmd.Connection = con;
                con.Open();
                sda.SelectCommand = cmd;
                sda.Fill(dt);
                con.Close();
                return dt;
            }
            catch (Exception exception)
            {
                return dt;
            }
        }
        //
        private DataTable sp_user_read_by_email_and_password(string email, string password)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_user_read_by_email_and_password", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user_email", SqlDbType.NVarChar).Value = email;
            cmd.Parameters.Add("@user_password", SqlDbType.NVarChar).Value = password;
            DataTable dt = GetData(cmd);

            return dt;
        }

        protected void Button_register_Click(object sender, EventArgs e)
        {
            label_register_message.Text = "";
            label_signin_message.Text = "";
            string first_name = TextBox_register_first_name.Text;
            string last_name = TextBox_register_last_name.Text;
            string email = TextBox_register_email.Text;
            string password = TextBox_register_password.Text;

            DataTable dt = sp_user_insert(first_name, last_name, email, password);
            if(dt.Rows.Count>0)
            {
                //registration successful
                label_register_message.Text = "Registration successful. Please proceed to signin.";
                TextBox_register_first_name.Text = "";
                TextBox_register_email.Text = "";
                TextBox_register_last_name.Text = "";
            }
            else
            {
                //Registration failed
                label_register_message.Text = "Registration failed. Please try again.";
            }
        }

        private DataTable sp_user_insert(string first_name, string last_name, string email, string password)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_user_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user_first_name", SqlDbType.NVarChar).Value = first_name;
            cmd.Parameters.Add("@user_last_name", SqlDbType.NVarChar).Value = last_name;
            cmd.Parameters.Add("@user_email", SqlDbType.NVarChar).Value = email;
            cmd.Parameters.Add("@user_password", SqlDbType.NVarChar).Value = password;
            DataTable dt = GetData(cmd);

            return dt;
        }
    }
}