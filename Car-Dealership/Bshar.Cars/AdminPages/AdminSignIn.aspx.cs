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
    public partial class AdminSignIn : System.Web.UI.Page
    {
        public static bool AdminExist(string TheAdminName)

        {
            string usersql = "select [Admin Name] from [Admins] where [Admin Name]='" + TheAdminName + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");   ///
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            x.Close();

            if (dt1.Rows.Count > 0)
                return true;
            return false;

        }

        public static bool CorrectPass(string TheAdminName, string ThePassword)
        {
            string usersql1 = "select [Password] from [Admins] where [Admin Name]='" + TheAdminName + "'";
            OleDbConnection y = new OleDbConnection();
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");   ///
            y.Open();

            OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
            DataSet dsUser = new DataSet();
            daobj1.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            y.Close();

            if (dt.Rows[0]["Password"].ToString() == ThePassword)
                return true;
            else
                return false;



        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string AN = this.TextBox1.Text;
            string P = this.TextBox2.Text;

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                if (AdminExist(AN))
                {
                    if (CorrectPass(AN, P))
                    {
                        Session["AdminName"] = TextBox1.Text;
                        Response.Redirect("~/AdminPages/AdminPage.aspx");
                    }
                    else
                    {
                        Label3.Visible = true;
                        Label3.Text = "Wrong password !";
                    }
                }



                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Admin doesn't exist...";
                }
            }

            else
            {
                Label3.Visible = true;
                Label3.Text = "Fill all fields...";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}