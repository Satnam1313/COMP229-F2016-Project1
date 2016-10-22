using System;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COMP229_F2016_Project1.Admin.Game
{
    public partial class Add : System.Web.UI.Page
    {
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {

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

        //Insert new game
        private DataTable sp_game_insert(string game_name, string team_1_name, string team_2_name, string score_ht, string score_ft, string date, string stadium_name, string referee_name, string short_description, string spectators)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
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

        protected void Button_submit_Click(object sender, EventArgs e)
        {
            sp_game_insert(TextBox_game_name.Text, DropDownList_team_1.SelectedValue, DropDownList_team_2.SelectedValue, TextBox_score_ht.Text, TextBox_score_ft.Text, TextBox_date.Text, TextBox_stadium_name.Text, TextBox_referee_name.Text, TextBox_short_description.Text, TextBox_spectators.Text);
            Response.Redirect("~/");
        }
    }
}