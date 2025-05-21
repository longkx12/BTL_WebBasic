using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_Web.Objects
{
    public class User
    {
    
        public int id {  get; set; }

        public string account { get; set; }
        public string username {  get; set; }  
        public string password { get; set; }

        public User(int id, string account , string username , string password ) {
            this.id = id;
            this.account = account;
            this.username = username;
            this.password = password;
        }

    }
}