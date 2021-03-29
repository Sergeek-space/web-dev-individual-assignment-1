using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webstudio.kiwi
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string res = DataAccessLayer.UserLogin(txtUserId.Text, txtPassword.Text);
            string[] words = res.Split('_');

            if (words[0] == "ERROR")
            {
                Response.Write("<font color='red' size='20px'>" + words[1] + "</font>");
            }
            else
            {
                if (words[0] == "Empty")
                {
                    Response.Write("<script type='text/javascript'>alert('Wrong User ID or Password!');</script>");
                }
                else
                {
                    HttpCookie myCookie = new HttpCookie("Cookie1");
                    myCookie.Values["userId"] = words[0];
                    myCookie.Values["role"] = words[1];
                    myCookie.Values["firstName"] = words[2];
                    myCookie.Expires = DateTime.Now.AddMinutes(2);
                    Response.Cookies.Add(myCookie);
                    Response.Write("<script type='text/javascript'> alert('Hello, " + words[2] + "'); window.location='Default.aspx' </script>");
                }
            }
        }
    }
}