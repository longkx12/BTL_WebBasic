using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Web
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void registerUser(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                List<User> allUs = Application["allUser"] as List<User>;

                string email = Request.Form["email"];
                string password = Request.Form["register_input"];
                string confirmPassword = Request.Form["confirm_password"];
                if (password != confirmPassword)
                {
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mật khẩu và nhập lại mật khẩu không khớp. Vui lòng thử lại.');", true);
                    return;
                }
                User sUser = new User();
                sUser.Email = email;
                sUser.Password = password;
                Session["User"] = sUser;
                allUs.Add(sUser);
                Response.Redirect("Login.aspx");
            }
        }


    }
}