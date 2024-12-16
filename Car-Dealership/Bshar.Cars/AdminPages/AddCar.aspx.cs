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
    public partial class AddCar : System.Web.UI.Page
    {
        public static bool BrandExist(string B)
        {
            string usersql = "select * from [Brands] where [Name]='" + B + "'";
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

        public static bool CarExist(string CarNumber)

        {
            string usersql = "select * from [Cars] where [Car Number]='" + CarNumber + "'";
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
            if (TextBox1.Text != ""&& TextBox2.Text != ""&& TextBox3.Text != ""&& TextBox4.Text != ""&& TextBox5.Text != "")
            {
                if (TextBox6.Text == "")
                    TextBox6.Text = "50000";
                string num = TextBox1.Text;
                string brand = TextBox2.Text;
                string model = TextBox3.Text;
                string year = TextBox4.Text;
                string color = TextBox5.Text;
                int price = int.Parse(TextBox6.Text);
                string pic = TextBox7.Text;

                if (CarExist(num))
                {


                    Label4.Visible = false;
                    Label3.Visible = true;
                    Label3.Text = "Car is already exist";

                }

                else
                {

                    WebService1 add = new WebService1();

                    string num1 = TextBox1.Text;
                    string brand1 = TextBox2.Text;
                    string model1= TextBox3.Text;
                    string year1 = TextBox4.Text;
                    string color1 = TextBox5.Text;
                    int price1 = int.Parse(TextBox6.Text);
                    string pic1 = TextBox7.Text;

                    add.AddCar(num1, brand1, model1, year1, color1, price1, pic1);

                    if (BrandExist(brand1) == false)
                    {
                        OleDbConnection x = DBFunctions.generate("Car_Sale.mdb");


                        string sql = "insert into [Brands] values('" + brand1 + "')";

                        OleDbCommand cmd = new OleDbCommand(sql, x);
                        cmd.ExecuteNonQuery();
                        x.Close();
                    }

                    Label4.Visible = true;
                    Label3.Visible = false;
                    Label3.Text = "Car is already exist";
                }
                

            
            }

            else

            {
                Label4.Visible = false;
                Label3.Visible = true;
                Label3.Text = "Fill all fields";
            }

            
          
        }
    }
}