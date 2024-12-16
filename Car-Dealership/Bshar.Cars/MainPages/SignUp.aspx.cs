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

    public partial class SignUp : System.Web.UI.Page
    {
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

        public static bool EmptyField (string x, string y, string z)
        {
            if (x == "" || y == "" || z == "")
                return true;
            return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string X = TextBox2.Text;
            string Y = TextBox3.Text;
            string Z = TextBox4.Text;
            string V = TextBox5.Text;


            if (EmptyField(X,Y,V))
            {
                Label3.Visible = true;
                Label3.Text = "Please fill all fields";
            }
            else
            {
                if (ConfirmPass(Y, Z) == false)
                {
                    Label3.Visible = true;
                    Label3.Text = " Make sure to re-write the password correctly... ";
                    Label3.Font.Bold = true;
                }
                else
                {

                    if (UserExist(X))
                    {
                        Label3.Visible = true;
                        Label3.Text = "This User Is Exist ! Try Another User Name... ";
                        Label3.Font.Bold = true;



                    }

                    else
                    {




                        Label3.Visible = false;
                        OleDbConnection v = new OleDbConnection();
                        //v.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
                        v.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");
                        v.Open();

                        string UserName = this.TextBox2.Text;
                        string Password = this.TextBox3.Text;
                        string Question = this.DropDownList1.SelectedValue.ToString();
                        string Answer = this.TextBox5.Text;



                        string sqlstring1 = "Insert into [Users]([User Name],[Password],[Question],[Answer]) values ('";
                        sqlstring1 += UserName + "','" + Password + "','" + Question + "','" + Answer + "')";




                        OleDbCommand cmd = new OleDbCommand(sqlstring1, v);
                        cmd.ExecuteNonQuery();

                        v.Close();


                        Response.Redirect("~/MainPages/SignIn.aspx");

                    }
                }
            }
        }
    }
}