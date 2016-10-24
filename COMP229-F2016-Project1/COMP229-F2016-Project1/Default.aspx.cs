using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace COMP229_F2016_Project1
{   
    /*Loads the data from the database for the four games for the current week*/
    public partial class Default : System.Web.UI.Page
    {
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;

        string[] array_game_name = { "game1_name", "game2_name", "game3_name", "game4_name" };
        string[] array_game_team1_name = { "game1_team1_name", "game2_team1_name", "game3_team1_name", "game4_team1_name", };
        string[] array_game_team2_name = { "game1_team2_name", "game2_team2_name", "game3_team2_name", "game4_team2_name", };
        string[] array_game_team1_logo = { "game1_team1_logo", "game2_team1_logo", "game3_team1_logo", "game4_team1_logo", };
        string[] array_game_team2_logo = { "game1_team2_logo", "game2_team2_logo", "game3_team2_logo", "game4_team2_logo", };
        string[] array_game_score = { "game1_score", "game2_score", "game3_score", "game4_score", };
        string[] array_game_short_description = { "game1_short_description", "game2_short_description", "game3_short_description", "game4_short_description", };
        string[] array_game_edit = { "game1_edit", "game2_edit", "game3_edit", "game4_edit", }; 
        protected void Page_Load(object sender, EventArgs e)
        {   //Calls the function that loads the data for week 1
            if (!IsPostBack)
            {
                link_week_1_Click(sender, e);
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
        //Read all games by current week
        private DataTable sp_game_read_all_for_current_week(DateTime date)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_read_all_for_current_week", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@current_week_in", SqlDbType.DateTime).Value = date;
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
            if (dataTable.Rows.Count == 0)
            {
                return;
            }
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                string s = array_game_name[i];
                (LoginView1.FindControl(array_game_name[i]) as HyperLink).Text = dataTable.Rows[i]["game_name"].ToString();

                int team_1_id = Int32.Parse(dataTable.Rows[i]["game_team_1"].ToString());
                int team_2_id = Int32.Parse(dataTable.Rows[i]["game_team_2"].ToString());

                DataTable dt_team_1 = sp_team_read_by_id(team_1_id);
                DataTable dt_team_2 = sp_team_read_by_id(team_2_id);

                if (dt_team_1.Rows.Count > 0)
                {
                    (LoginView1.FindControl(array_game_team1_logo[i]) as Image).ImageUrl = "~/Images/teams/" + dt_team_1.Rows[0]["team_logo"].ToString();
                    (LoginView1.FindControl(array_game_team1_name[i]) as Label).Text = dt_team_1.Rows[0]["team_name"].ToString();
                }

                if (dt_team_2.Rows.Count > 0)
                {
                    (LoginView1.FindControl(array_game_team2_logo[i]) as Image).ImageUrl = "~/Images/teams/" + dt_team_2.Rows[0]["team_logo"].ToString();
                    (LoginView1.FindControl(array_game_team2_name[i]) as Label).Text = dt_team_2.Rows[0]["team_name"].ToString();
                }
                (LoginView1.FindControl(array_game_score[i]) as Label).Text = dataTable.Rows[i]["game_score_ft"].ToString();
                (LoginView1.FindControl(array_game_short_description[i]) as Label).Text = dataTable.Rows[i]["game_short_description"].ToString();

                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    (LoginView1.FindControl(array_game_edit[i]) as LinkButton).PostBackUrl = "~/Admin/Game/Edit.aspx?game_id=" + dataTable.Rows[i]["game_id"].ToString();
                }

            }          
        }
        // Loads the data for week 1
        protected void link_week_1_Click(object sender, EventArgs e)
        {
            DateTime date = new DateTime(2016,10,09);
            dataTable = sp_game_read_all_for_current_week(date);
            loadData();
            (LoginView1.FindControl("link_week_1") as LinkButton).CssClass="active";
        }
        // Loads the data for week 2
        protected void link_week_2_Click(object sender, EventArgs e)
        {
            DateTime date = new DateTime(2016, 10, 16);
            dataTable = sp_game_read_all_for_current_week(date);
            loadData();
            (LoginView1.FindControl("link_week_2") as LinkButton).CssClass = "active";
        }
        // Loads the data for week 3
        protected void link_week_3_Click(object sender, EventArgs e)
        {
            DateTime date = new DateTime(2016, 10, 23);
            dataTable = sp_game_read_all_for_current_week(date);
            loadData();
        }
        // Loads the data for week 4
        protected void link_week_4_Click(object sender, EventArgs e)
        {
            DateTime date = new DateTime(2016, 10, 30);
            dataTable = sp_game_read_all_for_current_week(date);
            loadData();
        }
    }
}