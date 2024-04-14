using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_Web
{
    public class global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            List<User> allUser= new List<User>();
              User default1 = new User("nam@gmail.com","1");
            User default2 = new User("dung@gmail.com", "1");
            User default3 = new User("anh@gmail.com", "1");
            allUser.Add(default1);
            allUser.Add(default2);
            allUser.Add(default3);
            Application["allUser"] = allUser;


        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}