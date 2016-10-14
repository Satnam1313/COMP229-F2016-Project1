using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COMP229_F2016_Project1.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            dataTable = sp_game_read_all_for_current_week(today);
            loadData();
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
        //Read all games by current week
        private DataTable sp_game_read_all_for_current_week(DateTime today)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_read_all_for_current_week", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@current_week_in", SqlDbType.DateTime).Value = today;
            DataTable dt = GetData(cmd);

            return dt;
        }

        //Read team details by team id
        private DataTable sp_team_read_by_id(int team_id)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_team_read_by_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@team_id", SqlDbType.Int).Value = team_id;
            DataTable dt = GetData(cmd);

            return dt;
        }

        //Load data on the screen
        private void loadData()
        {
            game1_name.Text = dataTable.Rows[0]["game_name"].ToString();
            int team_1_id = Int32.Parse(dataTable.Rows[0]["game_team_1"].ToString());
            int team_2_id = Int32.Parse(dataTable.Rows[0]["game_team_2"].ToString());

            DataTable dt_team_1 = sp_team_read_by_id(team_1_id);
            DataTable dt_team_2 = sp_team_read_by_id(team_2_id);

            if (dt_team_1.Rows.Count > 0)
            {
                game1_team1_logo.ImageUrl = "~/Images/teams/" + dt_team_1.Rows[0]["team_logo"].ToString();
                game1_team1_name.Text = dt_team_1.Rows[0]["team_name"].ToString();
            }

            if (dt_team_2.Rows.Count > 0)
            {
                game1_team2_logo.ImageUrl = "~/Images/teams/" + dt_team_2.Rows[0]["team_logo"].ToString();
                game1_team2_name.Text = dt_team_2.Rows[0]["team_name"].ToString();
            }
            game1_score.Text = dataTable.Rows[0]["game_score_ft"].ToString();
            game1_short_description.Text = dataTable.Rows[0]["game_short_description"].ToString();
        }
    }
}