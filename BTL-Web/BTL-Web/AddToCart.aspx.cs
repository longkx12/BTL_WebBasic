using BTL_Web.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Web
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["username"] = "user1";
            string user = (string)Session["username"];
            Response.Write(user);
            string id = Request.QueryString["id"];
            List<products> cart = (List<products>)Application["listCart"];
            List<products> list = (List<products>)Application["listProduct_All"];
            if (user != null)
            {
                //action
                foreach (products product in list)
                {
                    if (product.id == id)
                    {
                        cart.Add(product);
                        break;
                    }

                }
                Application["listCart"] = cart;
                Response.Redirect("Cart.aspx?id=" + id);
            }
            else
            {
                // Response.Redirect("Login.aspx");
                Response.Write("<script>alert('Chua dang nhap!')</script>");
            }

        }
    }
}