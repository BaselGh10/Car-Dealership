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
    public partial class Buy : System.Web.UI.Page
    {
        public static bool CarExist(string CarNumber)

        {
            string usersql = "select * from [Cars] where [Car Number]='" + CarNumber + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");   ////
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
            string CarNum = (string)Session["Number"];
            if (CarExist(CarNum))
            {
                if (TextBox1.Text != "")
                {
                    string phone = TextBox1.Text;
                    string brand = (string)Session["Brand"];
                    string model = (string)Session["Model"];
                    string year = (string)Session["Year"];
                    string color = (string)Session["Color"];
                    int price = int.Parse((string)Session["Price"]);
                    string pic = (string)Session["Pic"];
                    string buyer = (string)Session["UserName"];
                    string Num = (string)Session["Number"];

                    string sqlstring1 = "Insert into [Sold]([Car Number],[Brand],[Model],[Producing Year],[Color],[Selling Price],[Picture],[Buyer],[Phone]) values ('";
                    sqlstring1 +=  Num+ "','" + brand + "','" + model + "','" + year + "','" + color + "'," + price + ",'" + pic + "','" +buyer + "','"+phone+"')";

                    DBFunctions.ChangeTable(sqlstring1, "Car_Sale.mdb");

                    string sql = "Delete from [Cars] where [Car Number]= '" + Num + "'";

                    DBFunctions.ChangeTable(sql, "Car_Sale.mdb");

                    Label3.Visible = true;
                    Label4.Visible = false;
                    Label4.Text = "Enter a phone number...";
                }

                else
                {
                    Label4.Visible = true;
                    Label3.Visible = false;
                    Label4.Text = "Enter a phone number...";


                }
            }

            else
            {
                Label4.Visible = true;
                Label4.Text = "The car is sold...";
                Label3.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}