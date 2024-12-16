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
    public partial class Forgot : System.Web.UI.Page
    {
        public static bool RightFields(string a , string b,string c)
        {
            
        string usersql1 = "select [Question],[Answer] from [Users] where [User Name]='" + c + "'";
            OleDbConnection y = new OleDbConnection();
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");    ///  
            y.Open();

            OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
            DataSet dsUser = new DataSet();
            daobj1.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            y.Close();

            if (dt.Rows[0]["Question"].ToString() == a && dt.Rows[0]["Answer"].ToString()== b)
                return true;
            else
                return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = (string)Session["UserName"]; 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = DropDownList1.SelectedValue.ToString();
            string b = TextBox1.Text;
            string c = (string)Session["UserName"];
            if (RightFields(a, b, c))
            {
                Response.Redirect("~/UsersPages/ChangePass.aspx");
            }
            else
            {
                Label6.Visible = true;
                
            }
        }
    }
}