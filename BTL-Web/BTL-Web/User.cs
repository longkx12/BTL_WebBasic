using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_Web
{
    public class User
    {
        private string email;
        private string password;

        public User(string email, string password)
        {
            this.email = email;
            this.password = password;
        }
        public User() { }

        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }

    }
}