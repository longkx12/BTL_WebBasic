<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BTL_Web.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/grid-system.css">
    <link rel="stylesheet" href="./CSS/header.css">
    <link rel="stylesheet" href="./CSS/content.css">
    <link rel="stylesheet" href="./CSS/footer.css">
    <link rel="stylesheet" href="./CSS/Cart.css">
    <link rel="stylesheet" href="./CSS/responsive.css">
    <link rel="stylesheet" href="./Fonts/fontawesome-free-6.5.1-web/css/all.min.css" />
</head>
<body>
    <section class="header">
            <div class="header__navbar">
                <div class="grid wide header-container">
                    <div class="header__navbar-logo">
                        <a href="Home.aspx" class="header__navbar-link">
                            <img class="header__navbar-img" src="./Image/Header/Geekbuying.png" alt="">
                        </a>
                    </div>
                    <div class="header__navbar-navigation">
                        <div class="grid wide navigation-container">
                            <div class="navigation__item">
                                <a href="NewProductPage.aspx" class="navigation__item-link">New</a>
                            </div>
                            <div class="navigation__item">
                                <a href="" class="navigation__item-link">Best Seller</a>
                            </div>
                            <div class="navigation__item">
                                <a href="" class="navigation__item-link">Brand</a>
                            </div>
                            <div class="navigation__item">
                                <a href="" class="navigation__item-link">Flash Sale</a>
                            </div>
                        </div>

                    </div>
                    <div class="header__navbar-address">
                        <a href="" class="address__link">
                            <span class="address__link-label">Ship To</span>
                            <i class="fa-solid fa-angle-down address__link-icon"></i>
                        </a>
                    </div>
                    <div class="header__navbar-login">
                        <a href="Login.aspx" class="login__link">
                            <%if (String.IsNullOrEmpty(Session["CurrentUser"] as String))
                                {
%>                          <span class="login__link-label">Sigin Account</span>
                            <i class="fa-solid fa-angle-down login__link-icon"></i>

                            <%}
                                else
                                {
%>
                            <span class="login__link-label""> <% Response.Write(Session["CurrentUser"].ToString());%></span>
                            <i class="fa-solid fa-user logged"></i>
                            <% }
%>
                        </a>
                    </div>
                    <div class="header__navbar-cart">
                        <a class="cart__link">
                            <i class="fa-solid fa-cart-shopping cart__link-icon"></i>
                            <%if (!String.IsNullOrEmpty(Session["CurrentUser"] as String))
                                {
%>
                            <span class="cart__link-notice"><% Response.Write(Session["quantity"].ToString()); %></span>
                            <%} %>

                        </a>
                    </div>
                </div>

                <div class="header__policy">
                    <div class="grid wide policy-container">
                        <div class="header__policy-return">
                            <img src="./Image/Header/top_free.jpg" class="return-icon"></img>
                            <div class="return-label">
                                <span class="return-header">FREE RETURNS</span>
                                <span class="return-description">Within 7 Days</span>
                            </div>
                        </div>
                        <div class="header__policy-shipIn">
                            <img src="./Image/Header/top_ship_car.jpg" class="shipIn-icon"></img>
                            <div class="shipIn-label">
                                <span class="shipIn-header">LOCAL STOCK</span>
                                <span class="shipIn-description">Ship in 24hrs</span>
                            </div>
                        </div>
                        <div class="header__policy-warranty">
                            <img src="./Image/Header/top_warranty.jpg" class="warranty-icon"></img>
                            <div class="warranty-label">
                                <span class="warranty-header">WARRANTY</span>
                                <span class="warranty-description">1~2 Year</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header__slideShow">
                <div class="slideShow-listImg">
                    <img src="./Image/SlideShow/1920x480-65f826922b40c9579ce954e8._p1_.jpg" alt="" class="img">
                    <img src="./Image/SlideShow/1920x480-660404c02b40c968203b8276._p1_.jpg" alt="" class="img">
                    <img src="./Image/SlideShow/1920x480-660a841b2b40c92a18112a3a._p1_.jpg" alt="" class="img">
                    <img src="./Image/SlideShow/app_1920_480-65445c3c2b40c943c42ff133._p1_.jpg" alt="" class="img">
                </div>
                <div class="slideShow-btn">
                    <div class="slideShow-left btn">
                        <i class="fa-solid fa-angle-left"></i>
                    </div>
                    <div class="slideShow-right btn">
                        <i class="fa-solid fa-angle-right"></i>
                    </div>
                </div>

            </div>
        </section>
    <section>
        <div class="cart-content">
            <div class=" shoppingCart" id="shoppingCart" runat="server">
                <div class="title-item">
                    <span class="product-image">Hình ảnh</span>
                    <span class="product-name">Sản phẩm</span>
                    <span class="product-price">Gía</span>
                    <span class="product-quantity">Số lượng</span>
                    <span class="product-total">Thành tiền</span>
                </div>
                <br />
                <div id="product" class="product">
                    <%string user = (string)Session["username"];
                        List<BTL_Web.Objects.products> cart = (List<BTL_Web.Objects.products>)Application["listCart"];
                        string idRequest = Request["id"];
                        string idSeperate = idRequest.Substring(0, 2);
                        double stotal = 0;
                        if (user != null)
                        {
                            if (cart.Count() > 0)
                            {
                                foreach (BTL_Web.Objects.products product in cart)
                                {
                                    double a = product.price_discounted;
                                    stotal += a;
                                            %>
                                            <div class="detail image">
                                                <%if (idSeperate == "DD")
                                                    { %>
                                            <img class="side" src="./Image/DealDay/<%= product.image %>.jpg" alt="<%=product.image %>" />
    
                                            <%} %>
                                             <%if (idSeperate == "NP")
                                                 { %>
                                             <img class="side" src="./Image/NewItem/<%= product.image %>.jpg" alt="<%=product.image %>" />
                                             <%} %>
                                             <%if (idSeperate == "BS")
                                                 { %>
                                             <img class="side" src="./Image/BestSeller/<%= product.image %>.jpg" alt="<%=product.image %>" />
                                             <%} %>
                                             <%if (idSeperate == "AB")
                                                 { %>
                                             <img class="side" src="./Image/PopularBrand/Anbernic/<%= product.image %>.jpg" alt="<%=product.image %>" />
                                             <%} %>
                                             <%if (idSeperate == "PB")
                                                 { %>
                                             <img class="side" src="./Image/PopularBrand/Tronsmart/<%= product.image %>.jpg" alt="<%=product.image %>" />
                                             <%}%>
                    </div>
                                            <div class="detail name">
                                                <span><%= product.description %></span>
                                            </div>
                                            <div class="detail price">
                                                <span id="price">$<%= product.price_origin %></span>
                                            </div>
                                            <div class="detail quantity">
                                                <input type="number" min="1" value="1" id="quantity" onkeyup="changeTotal()" onchange="change()" />
                                            </div>
                                            <div class="detail total">
                                                <span class="popular-discounted">$<%= product.price_discounted%></span>
                                            </div>
                                            <div class="detail remove">
                                                <a href="RemoveProduct.aspx?idRemove=<%= product.id %>"><i class="fa-solid fa-xmark"></i></a>
                                            </div>
                </div>
                <div class="checkout">
                    <div class="checkout__subtotal">
                        <span>SUBTOTAL: </span>
                        <span id="subTotalBox">$<%= stotal %></span>
                    </div>
                    <div class="btn-check">
                        <a href="Home.aspx">CHECK OUT</a>
                    </div>
                </div>
                <%}%>
                <%}%>
                <%}%>
            </div>
          
        </div>
    </section>
    <section class="footer">
        <div class="grid wide ">
            <div class=" footer-container row">
                <div class="col l-6">
                    <div class="footer-support row">
                        <div class="col l-4">
                            <div class="support-item">
                                <h2 class="support-item-title">Support</h2>
                                <div class="support-information">Shipping Guide</div>
                                <div class="support-information">Payment information</div>
                                <div class="support-information">Wholesale</div>
                                <div class="support-information">Drop shipping</div>
                                <div class="support-information">Affiliates</div>
                            </div>
                        </div>
                        <div class="col l-4">
                            <div class="support-item">
                                <h2 class="support-item-title">Help</h2>
                                <div class="support-information">About us</div>
                                <div class="support-information">Warranty</div>
                                <div class="support-information">Contact us</div>
                                <div class="support-information">Order status</div>
                                <div class="support-information">How to track</div>
                            </div>
                        </div>
                        <div class="col l-4">
                            <div class="support-item">
                                <h2 class="support-item-title">Policies</h2>
                                <div class="support-information">Terms & conditions</div>
                                <div class="support-information">Return policy</div>
                                <div class="support-information">Privacy</div>
                                <div class="support-information">Delaration</div>
                                <div class="support-information">Customs</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col l-6">
                    <div class="footer-connect row">
                        <div class="l-6 connect-item">
                            <h2 class="connect-item-title">Download The App
                            </h2>
                            <div class="download-apps">
                                <img class="download-img" src="./Image/Footer/android_app.png" alt="">
                                <div class="download-icon">
                                    <img class="download-icon-item" src="./Image/Footer/google_play.jpg" alt="">
                                    <img class="download-icon-item" src="./Image/Footer/app_store.jpg" alt="">
                                    <img class="download-icon-item" src="./Image/Footer/gallery.jpg" alt="">
                                </div>
                                <div class="connect-item">
                                    <div class="connect-item-mail">
                                        <i class="fa-solid fa-envelope"></i>
                                        Service@geekbuying.com
                                    </div>
                                    <div class="connect-item-ticket">
                                        <i class="fa-solid fa-ticket-simple"></i>Ticket
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="./Javascript/Cart.js"></script>
</body>
</html>
