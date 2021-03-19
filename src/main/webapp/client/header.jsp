<%@ page import="com.example.CoffeeShop.util.UrlUtils" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2/28/2021
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src=<%=UrlUtils.fullPathClient("img/Logo-Coffee.png")%> alt="" /></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li>
                <a href="#"><i class="fa fa-shopping-cart"></i> <span>3</span></a>
            </li>
        </ul>
        <div class="header__cart__price">total: <span>150.000đ</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src=<%=UrlUtils.fullPathClient("img/language.png")%> alt="" />
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a class="vi-VN" href="#">Việt Nam</a></li>
                <li><a class="en-UK" href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> Login</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.jps">Home</a></li>
            <li>
                <a href="#">Products</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shopDetails.jsp">Coffee</a></li>
                    <li><a href="./shopingCart.jsp">Tea</a></li>
                    <li><a href="./checkout.jsp">Milk Tea</a></li>
                    <li><a href="./blog-details.html">Bakery</a></li>
                </ul>
            </li>
            <li><a href="#">Member Card</a></li>
            <li><a href="./contact.jsp">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                            <li>Free Shipping for all Order of $99</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img src=<%=UrlUtils.fullPathClient("img/language.png")%> alt="" />
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a class="vi-VN" href="#">Việt Nam</a></li>
                                <li><a class="en-UK" href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="#"><i class="fa fa-user"></i> Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" style="align-items: center">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.jps"
                    ><img src=<%=UrlUtils.fullPathClient("img/Logo-Coffee.png")%> alt=""
                    /></a>
                </div>
            </div>
            <div class="col-lg-7">
                <nav
                        class="header__menu"
                        style="display: flex; justify-content: center"
                >
                    <ul>
                        <li class="active">
                            <a href="./index.jps" langkey="nav_home">Home</a>
                        </li>
                        <li>
                            <a href="./shopGrid.jsp" langkey="nav_shop">Products</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shopDetails.jsp">Coffee</a></li>
                                <li><a href="./shopingCart.jsp">Tea</a></li>
                                <li><a href="./checkout.jsp">Bakery</a></li>
                                <li><a href="./checkout.jsp">Milk Tea</a></li>
                            </ul>
                        </li>
                        <!-- <li><a href="./shopDetails.jsp">Coffee</a></li>
                        <li><a href="./blog.html">Tea</a></li> -->
                        <li><a href="./blog.html">Member Card</a></li>
                        <li>
                            <a href="./contact.jsp" langkey="nav_contact">Contact</a>
                        </li>
                    </ul>
                </nav>
                <input type="hidden" id="langCode" value="en" />
            </div>
            <div class="col-lg-2">
                <div class="header__cart">
                    <ul>
                        <li class="coffee-cart">
                            <a href="#">
                                <p>Cart</p>
                                <div class="coffee-cart-content">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>2</span>
                                </div>
                            </a>
                            <div
                                    class="hidden-info-cart animate__animated animate__fadeInUp"
                            >
                                <div class="content-item-cart-nav">
<%--                                    <div class="item-in-cart-nav">--%>
<%--                                        <div class=img-in-cart-nav">--%>
<%--                                            <img src=<%=UrlUtils.fullPathClient("img/product/product-5.jpg")%> alt="" />--%>
<%--                                        </div>--%>
<%--                                        <div class="info-in-cart-nav">--%>
<%--                                            <a href="#">Trà sữa chân châu đường đen</a>--%>
<%--                                            <p>--%>
<%--                                                <span>5</span> x <span>50.000đ</span>--%>
<%--                                                <span class="old-price">75.000đ</span>--%>
<%--                                            </p>--%>
<%--                                        </div>--%>
<%--                                        <a href="#" class="material-icons">delete_forever</a>--%>
<%--                                    </div>--%>
                                    <div class="item-in-cart-nav">
                                        <div class="img-in-cart-nav">
                                            <img src=<%=UrlUtils.fullPathClient("img/product/product-5.jpg")%> alt="" />
                                        </div>
                                        <div class="info-in-cart-nav">
                                            <a href="#">Trà sữa chân châu đường đen</a>
                                            <p>
                                                <span>5</span> x <span>50.000đ</span>
                                                <span class="old-price">75.000đ</span>
                                            </p>
                                        </div>
                                        <a href="#" class="material-icons">delete_forever</a>
                                    </div>
                                </div>

                                <div
                                        style="
                        margin: 10px 0px;
                        display: flex;
                        justify-content: space-between;
                      "
                                >
                                    <h4 style="color: red">Tổng :</h4>
                                    <h4 style="color: red">100.000đ</h4>
                                </div>
                                <a class="check-out-cart-nav" href="#">Thanh toán</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->
