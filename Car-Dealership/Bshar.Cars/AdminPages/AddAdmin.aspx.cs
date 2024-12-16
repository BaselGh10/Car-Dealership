using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Bshar.Cars
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        public static bool AdminExist(string TheAdminName)

        {
            string usersql = "select [Admin Name] from [Admins] where [Admin Name]='" + TheAdminName + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb"); ///
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string x = TextBox1.Text;
                if (AdminExist(x))
                {

                    Label4.Visible = true;
                    Label3.Visible = false;
                    Label4.Text = "This name is taken, try another name...";
                }

                else
                {

                    WebService1 adminAdd = new WebService1();

                    string name = this.TextBox1.Text;
                    string pass = this.TextBox2.Text;
                    adminAdd.AddAdmin(name, pass);
                    Label3.Visible = true;
                    Label4.Visible = false;
                    Label4.Text = "This name is taken, try another name...";
                }
            }

            else
            {
                Label4.Visible = true;
                Label3.Visible = false;
                Label4.Text = "Fill all fields";
            }
        }
    }
}