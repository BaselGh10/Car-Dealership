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
    public partial class Cars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
            
                


            
            
                string Brand = (string)Session["Brand"];

                string MinYear =(string)Session["MinYear"];
                string MaxYear = (string)Session["MaxYear"];
                int MaxPrice = int.Parse((string)Session["MaxPrice"]);
                int MinPrice = int.Parse((string)Session["MinPrice"]);






            SqlDataSource2.SelectCommand = "SELECT *  FROM [Cars] WHERE [Brand] = '" + Brand +
              "' AND [Producing Year]>='" + MinYear +
              "' AND [Producing Year]<='" + MaxYear +
              "' AND [Selling Price]>=" + MinPrice +
              " AND [Selling Price]<=" + MaxPrice +"";
            GridView1.DataBind();


            if (GridView1.Rows.Count == 0)
                Label5.Visible = true;




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                Session["Number"] = GridView1.SelectedRow.Cells[1].Text; 
                Session["Brand"] = GridView1.SelectedRow.Cells[2].Text;
                Session["Model"] = GridView1.SelectedRow.Cells[3].Text;
                Session["Year"] = GridView1.SelectedRow.Cells[4].Text;
                Session["Color"] = GridView1.SelectedRow.Cells[5].Text;
                Session["Price"] = GridView1.SelectedRow.Cells[6].Text;
                
                





                Response.Redirect("~/UsersPages/ViewCar.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}