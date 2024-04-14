using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Web
{
    public partial class Login : System.Web.UI.Page
    {
        List<User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = Application["allUser"] as List<User>;
             allUs.InnerText= "allUs" + (listUser).Count.ToString();
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            bool isAuthenticated = false;
            foreach (User item in listUser)
            {
                if(item.Email==email && item.Password == password)
                {
                    Session["User"] = item;
                    Response.Redirect("Home.aspx");
                    return;
                    
                }
            }
            if (!isAuthenticated)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sai mật khẩu. Vui lòng thử lại.');", true);
            }
        }
    }
}