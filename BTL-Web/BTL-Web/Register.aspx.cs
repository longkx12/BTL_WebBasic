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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<User> listUser = Application["listUser"] as List<User>;
            if (IsPostBack)
            {
                string account = Request.Form["account"];
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string passwordConfirm = Request.Form["confirm-password"];
                bool isError = false;
                int lastID;
                if (listUser.Count > 0)
                {
                    User lastUser = listUser[listUser.Count - 1];
                    lastID = lastUser.id;
                    lastID += 1;
                }
                else
                {
                    lastID = 0;
                }

                foreach (User user in listUser)
                {
                    if (user.account == account)
                    {
                        ErrorMessageLabel.Text = "Tài khoản này đã tồn tại";
                        isError = true;
                    }
                }

                if (!isError)
                {
                    User user = new User(lastID, account, username, password);
                    listUser.Add(user);
                    Application["listUser"] = listUser;
                    Thread.Sleep(1500);
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}