using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Bshar.Cars
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = (string)Session["UserName"];

            string sql = "Delete from [Users] where [User Name]= '" + Name + "'";

            DBFunctions.ChangeTable(sql, "Car_Sale.mdb");

            Response.Redirect("~/MainPages/SignIn.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}