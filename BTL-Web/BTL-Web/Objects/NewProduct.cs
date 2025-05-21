using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_Web.Objects
{
    public class NewProduct
    {
        public string id { get; set; }
        public string image { get; set; }
        public string description { get; set; }
        public double price_discounted { get; set; }
        public double price_origin { get; set; }
        public double favorite_count { get; set; }
        public string shipping {  get; set; }

        public NewProduct(string id, string image, string description, double price_discounted, double price_origin, double favorite_count , string shipping)
        {
            this.id = id;
            this.image = image;
            this.description = description;
            this.price_discounted = price_discounted;
            this.price_origin = price_origin;
            this.favorite_count = favorite_count;
            this.shipping = shipping;
        }
        public int caculateDiscountPercentage()
        {
            double percentage = (this.price_origin - this.price_discounted) / this.price_origin * 100;
            int percentageInt = (int)Math.Floor(percentage);
            return percentageInt;
        }
    }
}