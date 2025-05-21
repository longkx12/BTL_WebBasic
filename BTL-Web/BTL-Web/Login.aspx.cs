using BTL_Web.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Web
{
    public partial class Login : System.Web.UI.Page
    {
        public string CurrentUser = "";
        public int quantity = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            List<User> listUser = Application["listUser"] as List<User>;
            if (IsPostBack)
            {
                if (Request.HttpMethod == "GET")
                {
                    ErrorMessageLabel.Visible = false;
                }
                string account = Request.Form["account"];
                string password = Request.Form["password"];
                var user = listUser.Find(item => item.account == account && item.password == password);
                if (user != null)
                {
                    CurrentUser = user.username;
                    Session["CurrentUser"] = user.username;
                    Session["quantity"] = 0;
                    Thread.Sleep(2000);
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    ErrorMessageLabel.Visible = true;
                    ErrorMessageLabel.Text = "Sai mật khẩu hoặc tài khoản vui lòng thử lại";

                }
            }
        }
    }
}