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
    public partial class ChangePass : System.Web.UI.Page
    {
        public static void NewPass(string pass,string x)
        {
            string sql = "Update [Users] Set [Password]='" + pass + "' where [User Name] = '" + x + "'";
            DBFunctions.ChangeTable(sql, "Car_Sale.mdb", null);
            
        }
        public static bool ConfirmPass(string Pass, string RePass)

        {
            if (Pass.ToString() != null)
            {
                if (Pass.ToString() == RePass.ToString())
                {
                    return true;

                }
                else
                {
                    return false;
                }
            }
            else
                return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string x = TextBox1.Text;
            string y = TextBox2.Text;
            string Name = (string)Session["UserName"];
            if (x != "")
            {
                if (ConfirmPass(x, y))
                {

                    NewPass(x, Name);


                    Response.Redirect("~/MainPages/SignIn.aspx");

                }
                else
                    Label3.Visible = true;
                Label3.Text = "There is a mistake";
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Fill the fields";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}