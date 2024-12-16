using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bshar.Cars
{
    public partial class Carsaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = (string)Session["UserName"];
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["UserName"] = Label3.Text;
            Response.Redirect("~/UsersPages/ChangePass.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            

                if (txtMinYear.Text == "")
                    txtMinYear.Text = "0";

                if (txtMaxYear.Text == "")
                    txtMaxYear.Text = "99999";



                if (txtMaxPrice.Text == "")
                    txtMaxPrice.Text = "9999999";

                if (txtMinPrice.Text == "") 
                    txtMinPrice.Text = "0";










                Session["Brand"] = DropDownList1.SelectedValue.ToString();
                
                Session["MinYear"] = txtMinYear.Text;

                Session["MaxYear"] = txtMaxYear.Text;

                Session["MinPrice"] = txtMinPrice.Text;

                Session["MaxPrice"] = txtMaxPrice.Text;
                

            Response.Redirect("~/UsersPages/Cars.aspx");
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}