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
    public partial class RemoveCar : System.Web.UI.Page
    {
        public static bool CarExistInCars(string CarNumber)

        {
            string usersql = "select * from [Cars] where [Car Number]='" + CarNumber + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");    ///
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
        public static bool CarExistInSold(string CarNumber)

        {
            string usersql = "select * from [Sold] where [Car Number]='" + CarNumber + "'";
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string number = TextBox1.Text;
            if (CarExistInCars(number))
            {



                WebService1 remove = new WebService1();

                string num = (string)(this.TextBox1.Text);
                remove.RemoveCar(num);

                Label3.Visible = true;
                Label4.Visible = false;
            }

            else
            {
                if (CarExistInSold(number))
                {
                    WebService1 remove1 = new WebService1();

                    string num = (string)(this.TextBox1.Text);
                    remove1.RemoveFromSold(num);

                    Label3.Visible = true;
                    Label4.Visible = false;
                }

                else
                {

                    Label4.Visible = true;
                    Label3.Visible = false;
                }
            }
        
        }
    }
}