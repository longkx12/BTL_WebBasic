using BTL_Web.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Web
{
    public partial class detailProduct : System.Web.UI.Page
    {
        List<products> products;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*string idRequest = Request.QueryString["id"];
            string idSeperate = idRequest.Substring(0, 2);
            products = (List<products>)Application["listProduct_All"];
            string html = "";
            foreach (products product in products)
            {
                if (product.id == idRequest)
                {
                    html += "<div class=\"left\">\r\n               <div class=\"main-image\">\r\n                   <img class=\"side\"" +
                        " src='Image/" + product.image + ".jpg' />\r\n               </div>\r\n               \r\n           </div>\r\n           <div class=\"right\">\r\n    " +
                        "      <h4>" + product.sold + "k đã bán</h4>\r\n               <div class=\"item-price flex\">\r\n                   <h4><small>$</small><del>" +
                        +product.price_origin + "</del></h4>\r\n                   <h4>$" + product.price_discounted + "</h4>\r\n               </div>\r\n               <br />\r\n               <p>" +
                        product.description + "</p>\r\n               \r\n               <button><a href='AddProduct.aspx?id=" + product.id + "'>Add To Cart</a></button>\r\n            </div>";
                }

            }
            detail.InnerHtml = html;*//*string idRequest = Request.QueryString["id"];
            string idSeperate = idRequest.Substring(0, 2);
            products = (List<products>)Application["listProduct_All"];
            string html = "";
            foreach (products product in products)
            {
                if (product.id == idRequest)
                {
                    html += "<div class=\"left\">\r\n               <div class=\"main-image\">\r\n                   <img class=\"side\"" +
                        " src='Image/" + product.image + ".jpg' />\r\n               </div>\r\n               \r\n           </div>\r\n           <div class=\"right\">\r\n    " +
                        "      <h4>" + product.sold + "k đã bán</h4>\r\n               <div class=\"item-price flex\">\r\n                   <h4><small>$</small><del>" +
                        +product.price_origin + "</del></h4>\r\n                   <h4>$" + product.price_discounted + "</h4>\r\n               </div>\r\n               <br />\r\n               <p>" +
                        product.description + "</p>\r\n               \r\n               <button><a href='AddProduct.aspx?id=" + product.id + "'>Add To Cart</a></button>\r\n            </div>";
                }

            }
            detail.InnerHtml = html;*/
        }
    }
}