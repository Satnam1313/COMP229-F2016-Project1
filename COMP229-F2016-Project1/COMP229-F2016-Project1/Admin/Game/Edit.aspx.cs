using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COMP229_F2016_Project1.Admin.Game
{
    public partial class Edit : System.Web.UI.Page
    {   //Variable name for the connection string
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;
        static string game_id;
        protected void Page_Load(object sender, EventArgs e)
        {   // Loads the form witht the data for the particular game, and fetching the game id fromt the querry string
            if (!IsPostBack)
            {
                game_id = Request.QueryString["game_id"];
                if (game_id == null)
                {
                    Response.Redirect("~/");
                }
                dataTable = sp_game_read_by_id(game_id);
                //Load data on the screen
                loadData();
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

        //Edit game
        private DataTable sp_game_update(string game_id, string game_name, string team_1_name, string team_2_name, string score_ht, string score_ft, string date, string stadium_name, string referee_name, string short_description, string spectators)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@game_id", SqlDbType.Int).Value = game_id;
            cmd.Parameters.Add("@game_name", SqlDbType.NVarChar).Value = game_name;
            cmd.Parameters.Add("@game_team_1", SqlDbType.Int).Value = team_1_name;
            cmd.Parameters.Add("@game_team_2", SqlDbType.Int).Value = team_2_name;
            cmd.Parameters.Add("@game_score_ht", SqlDbType.NVarChar).Value = score_ht;
            cmd.Parameters.Add("@game_score_ft", SqlDbType.NVarChar).Value = score_ft;
            cmd.Parameters.Add("@game_date", SqlDbType.DateTime).Value = date;
            cmd.Parameters.Add("@game_stadium", SqlDbType.NVarChar).Value = stadium_name;
            cmd.Parameters.Add("@game_refree", SqlDbType.NVarChar).Value = referee_name;
            cmd.Parameters.Add("@game_short_description", SqlDbType.NVarChar).Value = short_description;
            cmd.Parameters.Add("@game_spectators", SqlDbType.Int).Value = spectators;
            DataTable dt = GetData(cmd);

            return dt;
        }

        //Get game by game id
        private DataTable sp_game_read_by_id(string game_id)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_read_by_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@game_id", SqlDbType.Int).Value = game_id;
            DataTable dt = GetData(cmd);

            return dt;
        }
        // Loads the data onto the form fetched from the database
        private void loadData()
        {
            if (dataTable.Rows.Count == 0)
            {
                Response.Redirect("~/");
            }
            TextBox_game_name.Text = dataTable.Rows[0]["game_name"].ToString();
            DropDownList_team_1.SelectedValue= dataTable.Rows[0]["game_team_1"].ToString();
            DropDownList_team_2.SelectedValue = dataTable.Rows[0]["game_team_2"].ToString();
            TextBox_score_ht.Text = dataTable.Rows[0]["game_score_ht"].ToString();
            TextBox_score_ft.Text = dataTable.Rows[0]["game_score_ft"].ToString();
            TextBox_date.Text = dataTable.Rows[0]["game_date"].ToString();
            TextBox_stadium_name.Text = dataTable.Rows[0]["game_stadium"].ToString();
            TextBox_referee_name.Text = dataTable.Rows[0]["game_refree"].ToString();
            TextBox_short_description.Text = dataTable.Rows[0]["game_short_description"].ToString();
            TextBox_spectators.Text = dataTable.Rows[0]["game_spectators"].ToString();

        }

        // Called when user clicks on submit button
        protected void Button_submit_Click(object sender, EventArgs e)
        {
            sp_game_update(game_id, TextBox_game_name.Text, DropDownList_team_1.SelectedValue, DropDownList_team_2.SelectedValue, TextBox_score_ht.Text, TextBox_score_ft.Text, TextBox_date.Text, TextBox_stadium_name.Text, TextBox_referee_name.Text, TextBox_short_description.Text, TextBox_spectators.Text);
            Response.Redirect("~/");
        }
        // Called when user clicks on home button
        protected void Button_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}