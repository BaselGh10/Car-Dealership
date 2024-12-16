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
    public partial class ViewCar : System.Web.UI.Page
    {
        public static bool CarExist(string CarNumber)

        {
            string usersql = "select * from [Cars] where [Car Number]='" + CarNumber + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");     ///
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
            Label3.Text = (string)Session["Number"];
            Label4.Text = (string)Session["Brand"];
            Label5.Text = (string)Session["Model"];
            Label6.Text = (string)Session["Year"];
            Label7.Text = (string)Session["Color"];
            Label8.Text = (string)Session["Price"];

            string x = (string)Session["Number"];


            string usersql1 = "select * from [Cars] where [Car Number]='" + x + "'";
            OleDbConnection y = new OleDbConnection();
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb");  ///
            y.Open();

            OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
            DataSet dsUser = new DataSet();
            daobj1.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            y.Close();

            if (dt.Rows.Count != 0)
            {
               string k = dt.Rows[0]["Picture"].ToString();
                Session["Pic"] = k.ToString();

                if (k.ToString() != "")
                {
                    Image1.ImageUrl = k.ToString();
                    Image1.Visible = true;
                }
                else
                    Image1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CarNum = (string)Session["Number"];
            if (CarExist(CarNum))
            {
                Response.Redirect("~/UsersPages/Buy.aspx");

            }
            else
                Label9.Visible = true;
        }
    }
}