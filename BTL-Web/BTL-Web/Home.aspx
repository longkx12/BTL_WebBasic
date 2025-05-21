<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL_Web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronic Store</title>
    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/grid-system.css">
    <link rel="stylesheet" href="./CSS/header.css">
    <link rel="stylesheet" href="./CSS/content.css">
    <link rel="stylesheet" href="./CSS/footer.css">
    <link rel="stylesheet" href="./CSS/responsive.css">
    <link rel="stylesheet" href="./Fonts/fontawesome-free-6.5.1-web/css/all.min.css" />
</head>
<body runat="server">
    <section class="wrapper">
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
        <section class="content">
            <div class="grid wide content-container">
                <div class="content__deal">
                    <h2 class="deal-header">Deal Of The Day</h2>
                    <div class="deal-product row" id="dealProduct" runat="server">
                    </div>
                </div>
                <div class="content__new">
                    <h2 class="new-header">
                        <a class="new-header-link" href="">New For You</a>
                        <a href="" class="new-header-seeMore">See More</a>
                    </h2>
                    <ul class="new-product row" id="newProduct" runat="server">
                    </ul>
                </div>
                <div class="content___bestSellers">
                    <h2 class="bestSeller-header">
                        <a href="" class="bestSeller-header-link">Best Sellers </a>
                        <a href="" class="bestSeller-header-seeMore">See More </a>
                    </h2>
                    <ul class="bestSeller-product row" id="bestSellerProduct" runat="server">
                        <%--  <li class=" col l-2-4 m-4 c-12">
                        <div class="bestSeller-product-item">
                            <a href="" class="bestSeller-item-link">
                                <img src="./img/BestSeller/H96-MAX-V58-Android-12-RK3588-8GB-64GB-TV-BOX-8K-decode-517022-0._w280_p1_.webp"
                                    alt="" class="bestSeller-item-img">
                            </a>
                            <span class="bestSeller-item-saleOff">12% OFF</span>
                            <div class="bestSeller-item-description">
                                H96 MAX V58 Android 12 TV Box RK3588 Octa Core
                                2.4GHz
                                8GB
                                DDR4
                            </div>
                            <div class="bestSeller-rating">
                                <span class="rating-star">
                                    <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                                    <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                                    <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                                    <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                                    <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                                </span>
                                <span class="rating-sold">6</span>
                            </div>
                            <div class="bestSeller-item-price">
                                <span class="price-discounted">146.13$</span>
                                <span class="price-origin">172.11$</span>
                            </div>
                        </div>

                    </li>--%>
                    </ul>
                </div>
                <div class="content__popularBrand">
                    <h2 class="popularBrand-header">
                        <a href="" class="popularBrand-header-link">Popular Brand</a>
                    </h2>
                    <ul class="popularBrand-product row">
                        <li class="col l-4 m-12 c-12">
                            <a href="" class="popular-brand-link">
                                <img class="popular-brand-img" src="./Image/PopularBrand/Anbernic/Anbernic-logo.jpg"
                                    alt="Anbernic">
                            </a>
                        </li>
                        <li class="col l-8 m-12 c-12">
                            <ul class="popular-product-list row" id="popularProductItemAnbernic" runat="server">
                                <%--  <li class="col l-3 m-6 c-12">
                                <div class="popular-product-item">
                                    <a class="popular-item-link" href="">
                                        <img class="popular-item-img"
                                            src="./img/PopularBrand/anbernic-rg35xx-handheld-game-console-64gb-card-grey-c76ecb-1693877270861._w280_p1_.webp"
                                            alt="">
                                        <span class="popular-saleOff">17% OFF</span>
                                    </a>
                                    <span class="popular-description">ANBERNIC RG35XX Plus Game Console</span>
                                    <span class="popular-discounted">60.88$</span>
                                    <span class="popular-origin">73.06$</span>
                                </div>
                            </li>--%>
                            </ul>
                        </li>
                    </ul>
                    <ul class="popularBrand-product row">
                        <li class="col l-4 m-12 c-12">
                            <a href="" class="popular-brand-link">
                                <img class="popular-brand-img" src="./Image/PopularBrand/Tronsmart/tronsmart-logo.jpg"
                                    alt="Tronsmart">
                            </a>
                        </li>
                        <li class="col l-8 m-12 c-12">
                            <ul class="popular-product-list row" id="popularProductTronsmart" runat="server">
                                <%--  <li class="col l-3 m-6 c-12">
                                <div class="popular-product-item">
                                    <a class="popular-item-link" href="">
                                        <img class="popular-item-img"
                                            src="./img/PopularBrand/anbernic-rg35xx-handheld-game-console-64gb-card-grey-c76ecb-1693877270861._w280_p1_.webp"
                                            alt="">
                                        <span class="popular-saleOff">17% OFF</span>
                                    </a>
                                    <span class="popular-description">ANBERNIC RG35XX Plus Game Console</span>
                                    <span class="popular-discounted">60.88$</span>
                                    <span class="popular-origin">73.06$</span>
                                </div>
                            </li>  --%>
                            </ul>
                        </li>
                    </ul>
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
    </section>
    <script src="./Javascript/slideShow.js"></script>
</body>
</html>