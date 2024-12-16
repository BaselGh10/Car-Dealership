using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;

namespace Bshar.Cars
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    //public class WebService1 : System.Web.Services.WebService
    //{

    //    [WebMethod]
    //    public void AddCar(string Number, string Brand, string Model , string Year, string Color,int Price, string Picture)
    //    {


    //        OleDbConnection x = DBFunctions.generate("Car_Sale.mdb");


    //        string sql = "insert into [Cars] values('" + Number + "','" + Brand + "','" + Model + "','" + Year + "','" + Color + "'," + Price + ",'" + Picture + "')";

    //        OleDbCommand cmd = new OleDbCommand(sql, x);
    //        cmd.ExecuteNonQuery();
    //        x.Close();
    //    }

    //    [WebMethod]
    //    public void AddAdmin(string AdminName,string Password)
    //    {
    //        OleDbConnection y = DBFunctions.generate("Car_Sale.mdb");


    //        string sql1 = "insert into [Admins] values('" + AdminName + "','" + Password + "')";

    //        OleDbCommand cmd1 = new OleDbCommand(sql1, y);
    //        cmd1.ExecuteNonQuery();
    //        y.Close();
    //    }

    //    [WebMethod]
    //    public void RemoveAdmin(string AdminName)
    //    {


    //        string sql = "Delete from [Admins] where [Admin Name]= '" + AdminName + "'";

    //        DBFunctions.ChangeTable(sql, "Car_Sale.mdb");

    //    }

    //    [WebMethod]
    //    public void RemoveCar(string CarNumber)
    //    {


    //        OleDbConnection x = DBFunctions.generate("Car_Sale.mdb");

    //        string sql1 = "Delete from [Cars] where [Car Number]= '" + CarNumber + "'";

    //        DBFunctions.ChangeTable(sql1, "Car_Sale.mdb");



    //    }
    //    [WebMethod]
    //    public void RemoveFromSold(string CarNumber)
    //    {

    //        OleDbConnection x = DBFunctions.generate("Car_Sale.mdb");
    //        string sql2 = "Delete from [Sold] where [Car Number]= '" + CarNumber + "'";
    //        DBFunctions.ChangeTable(sql2, "Car_Sale.mdb");

    //    }
    //}

    public class WebService1 : System.Web.Services.WebService
    {
        [WebMethod]
        public void AddCar(string Number, string Brand, string Model, string Year, string Color, int Price, string Picture)
        {
            using (OleDbConnection x = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb;")))
            {
                string sql = "INSERT INTO [Cars] VALUES (?, ?, ?, ?, ?, ?, ?)";
                using (OleDbCommand cmd = new OleDbCommand(sql, x))
                {
                    cmd.Parameters.AddWithValue("@Number", Number);
                    cmd.Parameters.AddWithValue("@Brand", Brand);
                    cmd.Parameters.AddWithValue("@Model", Model);
                    cmd.Parameters.AddWithValue("@Year", Year);
                    cmd.Parameters.AddWithValue("@Color", Color);
                    cmd.Parameters.AddWithValue("@Price", Price);
                    cmd.Parameters.AddWithValue("@Picture", Picture);
                    x.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        [WebMethod]
        public void AddAdmin(string AdminName, string Password)
        {
            using (OleDbConnection y = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Car_Sale.mdb;")))
            {
                string sql1 = "INSERT INTO [Admins] VALUES (?, ?)";
                using (OleDbCommand cmd1 = new OleDbCommand(sql1, y))
                {
                    cmd1.Parameters.AddWithValue("@AdminName", AdminName);
                    cmd1.Parameters.AddWithValue("@Password", Password);
                    y.Open();
                    cmd1.ExecuteNonQuery();
                }
            }
        }

        [WebMethod]
        public void RemoveAdmin(string AdminName)
        {
            string sql = "DELETE FROM [Admins] WHERE [Admin Name] = ?";
            DBFunctions.ChangeTable(sql, "Car_Sale.mdb", new OleDbParameter("@AdminName", AdminName));
        }

        [WebMethod]
        public void RemoveCar(string CarNumber)
        {
            string sql1 = "DELETE FROM [Cars] WHERE [Car Number] = ?";
            DBFunctions.ChangeTable(sql1, "Car_Sale.mdb", new OleDbParameter("@CarNumber", CarNumber));
        }

        [WebMethod]
        public void RemoveFromSold(string CarNumber)
        {
            string sql2 = "DELETE FROM [Sold] WHERE [Car Number] = ?";
            DBFunctions.ChangeTable(sql2, "Car_Sale.mdb", new OleDbParameter("@CarNumber", CarNumber));
        }
    }

}
