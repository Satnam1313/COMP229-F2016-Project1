using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_Project1.Admin.Game
{  
    public partial class Default : System.Web.UI.Page
    {   //Variable name for the connection string
        private string strConnString = ConfigurationManager.ConnectionStrings["game_trackerConnectionString"].ConnectionString;
        DataTable dataTable;
        //Loading gridview with all games
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dataTable = sp_game_read_all();
                GridView_games.DataSource = dataTable;
                GridView_games.DataBind();
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
        //Reading all games
        private DataTable sp_game_read_all()
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_read_all", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = GetData(cmd);

            return dt;
        }
        //Pagination - Moving from one page to another
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            dataTable = sp_game_read_all();
            GridView_games.DataSource = dataTable;
            GridView_games.PageIndex = e.NewPageIndex;
            GridView_games.DataBind();
        }
        // This function will be called when the user clicks on the edit button
        protected void GridView_games_RowEditing(object sender, GridViewEditEventArgs e)
        {
            String str = ((Label)GridView_games.Rows[e.NewEditIndex].FindControl("label_game_id")).Text;
            int i = Convert.ToInt32(str);
            Response.Redirect("~/Admin/game/edit.aspx?game_id=" + i);
        }
        // This function will be called when the user clicks on the delete button
        protected void ButtonDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imageButtonRemove = (ImageButton)sender;
            sp_game_delete_by_id(Convert.ToInt32(imageButtonRemove.CommandArgument));

            dataTable = sp_game_read_all();
            GridView_games.DataSource = dataTable;
            GridView_games.DataBind();

        }
        // Stored procedure being called to delete the selected game
        private DataTable sp_game_delete_by_id( int game_id)
        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand("sp_game_delete_by_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@game_id", SqlDbType.Int).Value = game_id;

            DataTable dt = GetData(cmd);

            return dt;
        }
    }
}
