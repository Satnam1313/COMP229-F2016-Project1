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
    {   // Redirecting to the home page for admin        
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}