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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {

                OleDbConnection x = new OleDbConnection();
                x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb"); ///
                x.Open();

                string from = this.TextBox1.Text;
                string email = this.TextBox2.Text;
                string sub = this.TextBox3.Text;
                string msg = this.TextBox4.Text;

                string sql = "Insert into [Messages]([From],[E-Mail],[Subject],[Message],[Date]) values ('";
                sql += from + "','" + email + "','" + sub + "','" + msg + "','" + DateTime.Now.ToString() + "')";



                OleDbCommand cmd = new OleDbCommand(sql, x);
                cmd.ExecuteNonQuery();

                x.Close();

                TextBox3.Text = "";
                TextBox4.Text = "";
                Label4.Visible = true;
                Label4.Text = "Thank you, your message is sent to us...";
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Fill the fields";
            }
        }
    }
}