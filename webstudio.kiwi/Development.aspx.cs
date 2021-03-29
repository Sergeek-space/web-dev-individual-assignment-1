using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webstudio.kiwi
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["Cookie1"];

            string userId = myCookie.Values["userId"];
            string role = myCookie.Values["role"];
            string firstName = myCookie.Values["firstName"];
            myCookie.Expires = DateTime.Now.AddMinutes(-2);
            Response.Cookies.Add(myCookie);

            // Get the product type through label text in the data list

            Button BuyNowButton = (Button)sender;
            DataListItem item = (DataListItem)BuyNowButton.NamingContainer;
            Label NameLabel = (Label)item.FindControl("prdTypeLabel");
            string prdType = NameLabel.Text;

            //HttpCookie myCookie = new HttpCookie("Cookie1");
            myCookie.Values["userId"] = userId;
            myCookie.Values["role"] = role;
            myCookie.Values["firstName"] = firstName;
            myCookie.Values["cart"] += prdType + "_";

            // Instead of writing Cart Info Into the DB, I desided to keep it in the Cookie (string with delimiters),
            // Along with the info about the buyer, so I can process the purchase further if needed
            
            myCookie.Expires = DateTime.Now.AddMinutes(2);
            Response.Cookies.Add(myCookie);
            Response.Write("<script type='text/javascript'> alert('The " + prdType + " package has been added to the cart!'); </script>");
        }
    }
}