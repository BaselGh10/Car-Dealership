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
    public partial class SignIn1 : System.Web.UI.Page
    {
        public static bool UserExist(string TheUserName)

        {
            string usersql = "select [User Name] from [Users] where [User Name]='" + TheUserName + "'";
            OleDbConnection x = new OleDbConnection();
            //x.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
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

        public static bool CorrectPass(string TheUserName, string ThePassword)
        {
            string usersql1 = "select [Password] from [Users] where [User Name]='" + TheUserName + "'";
            OleDbConnection y = new OleDbConnection();
            //y.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
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
            string UN = this.TextBox1.Text;
            string P = this.TextBox5.Text;

            if (UserExist(UN))
            {
                if (CorrectPass(UN, P))
                {
                    Session["UserName"] = TextBox1.Text;
                    Response.Redirect("~/UsersPages/Search.aspx");
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
                Label3.Text = "User doesn't exist...";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label3.Visible = true;
                Label3.Text = "Enter the user name...";
            }

            else
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("~/MainPages/Forgot.aspx");
            }
        }
    }
}