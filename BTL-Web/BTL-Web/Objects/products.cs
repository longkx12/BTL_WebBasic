using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_Web.Objects
{
    public class products
    {
        public string id { get; set; }
        public string image { get; set; }

        public string description { get; set; }
        public double price_discounted { get; set; }
        public double price_origin { get; set; }

        public double sold { get; set; }

        public products(string id, string image,  string description, double price_discounted, double price_origin, double sold)
        {
            this.id = id;
            this.image = image;
      /*      this.brand = brand;*/
            this.description = description;
            this.price_discounted = price_discounted;
            this.price_origin = price_origin;
            this.sold = sold;
        } 
        public int caculateDiscountPercentage()
        {
            double percentage = (this.price_origin - this.price_discounted) / this.price_origin * 100;
            int percentageInt = (int)Math.Floor(percentage);
            return percentageInt;
        }
    }
}