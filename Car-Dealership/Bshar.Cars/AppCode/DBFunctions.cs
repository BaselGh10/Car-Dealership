using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Bshar.Cars
{
    public class DBFunctions
    {
        public static OleDbConnection generate (string file)
        {
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + file);   ///
            x.Open();
            return x;
        }

        public static void ChangeTable(string sql,string file, OleDbParameter oleDbParameter)
        {
            OleDbConnection x = generate(file);
            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }

       
    }
}