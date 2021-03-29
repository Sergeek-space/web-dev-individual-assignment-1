using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webstudio.kiwi
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["Cookie1"];
            
        }

        protected void btnAddRecord_Click(object sender, EventArgs e)
        {
            int res = DataAccessLayer.AddWebDevRecord(txtServiceType.Text, txtServicedescription.Text, int.Parse(txtPrice.Text));
            if (res != 0)
            {
                Response.Write("<script type='text/javascript'>alert('The Record Successfully Added!'); ; window.location='Cms.aspx' </script>");
            }
                
        }
    }
}