using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webstudio.kiwi
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int res = DataAccessLayer.UserRegister(txtEmail.Text, txtFirstName.Text, txtLastName.Text, txtPassword2.Text);
            if (res != 0)
            {
                HttpCookie myCookie = new HttpCookie("Cookie1");
                myCookie.Values["userId"] = txtEmail.Text;
                myCookie.Values["role"] = "0";
                myCookie.Values["firstName"] = txtFirstName.Text;
                myCookie.Expires = DateTime.Now.AddMinutes(2);
                Response.Cookies.Add(myCookie);
                Response.Write("<script type='text/javascript'>alert('The user sucessfully registered! '); window.location='Default.aspx' </script>");
            }
                
        }
    }
}