<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.CoffeeShop.modal.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Ogani Template"/>
    <meta name="keywords" content="Ogani, unica, creative, html"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Coffee Shop</title>

    <!-- Google Font -->
    <%@include file="link.jsp" %>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<%@include file="header.jsp" %>
<%--    <!-- Humberger Begin -->--%>
<%--    <div class="humberger__menu__overlay"></div>--%>
<%--    <div class="humberger__menu__wrapper">--%>
<%--      <div class="humberger__menu__logo">--%>
<%--        <a href="#"><img src="img/Logo-Coffee.png" alt="" /></a>--%>
<%--      </div>--%>
<%--      <div class="humberger__menu__cart">--%>
<%--        <ul>--%>
<%--          <li>--%>
<%--            <a href="#"><i class="fa fa-shopping-cart"></i> <span>3</span></a>--%>
<%--          </li>--%>
<%--        </ul>--%>
<%--        <div class="header__cart__price">total: <span>150.000đ</span></div>--%>
<%--      </div>--%>
<%--      <div class="humberger__menu__widget">--%>
<%--        <div class="header__top__right__language">--%>
<%--          <img src="img/language.png" alt="" />--%>
<%--          <div>English</div>--%>
<%--          <span class="arrow_carrot-down"></span>--%>
<%--          <ul>--%>
<%--            <li><a class="vi-VN" href="#">Việt Nam</a></li>--%>
<%--            <li><a class="en-UK" href="#">English</a></li>--%>
<%--          </ul>--%>
<%--        </div>--%>
<%--        <div class="header__top__right__auth">--%>
<%--          <a href="#"><i class="fa fa-user"></i> Login</a>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <nav class="humberger__menu__nav mobile-menu">--%>
<%--        <ul>--%>
<%--          <li class="active"><a href="./index.jps">Home</a></li>--%>
<%--          <li>--%>
<%--            <a href="#">Products</a>--%>
<%--            <ul class="header__menu__dropdown">--%>
<%--              <li><a href="./shopDetails.jsp">Coffee</a></li>--%>
<%--              <li><a href="./shopingCart.jsp">Tea</a></li>--%>
<%--              <li><a href="./checkout.jsp">Milk Tea</a></li>--%>
<%--              <li><a href="./blog-details.html">Bakery</a></li>--%>
<%--            </ul>--%>
<%--          </li>--%>
<%--          <li><a href="#">Member Card</a></li>--%>
<%--          <li><a href="./contact.jsp">Contact</a></li>--%>
<%--        </ul>--%>
<%--      </nav>--%>
<%--      <div id="mobile-menu-wrap"></div>--%>
<%--      <div class="header__top__right__social">--%>
<%--        <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--        <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--        <a href="#"><i class="fa fa-linkedin"></i></a>--%>
<%--        <a href="#"><i class="fa fa-pinterest-p"></i></a>--%>
<%--      </div>--%>
<%--      <div class="humberger__menu__contact">--%>
<%--        <ul>--%>
<%--          <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>--%>
<%--          <li>Free Shipping for all Order of $99</li>--%>
<%--        </ul>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <!-- Humberger End -->--%>

<%--    <!-- Header Section Begin -->--%>
<%--    <header class="header">--%>
<%--      <div class="header__top">--%>
<%--        <div class="container">--%>
<%--          <div class="row">--%>
<%--            <div class="col-lg-6 col-md-6">--%>
<%--              <div class="header__top__left">--%>
<%--                <ul>--%>
<%--                  <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>--%>
<%--                  <li>Free Shipping for all Order of $99</li>--%>
<%--                </ul>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 col-md-6">--%>
<%--              <div class="header__top__right">--%>
<%--                <div class="header__top__right__social">--%>
<%--                  <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--                  <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                  <a href="#"><i class="fa fa-linkedin"></i></a>--%>
<%--                  <a href="#"><i class="fa fa-pinterest-p"></i></a>--%>
<%--                </div>--%>
<%--                <div class="header__top__right__language">--%>
<%--                  <img src="img/language.png" alt="" />--%>
<%--                  <div>English</div>--%>
<%--                  <span class="arrow_carrot-down"></span>--%>
<%--                  <ul>--%>
<%--                    <li><a class="vi-VN" href="#">Việt Nam</a></li>--%>
<%--                    <li><a class="en-UK" href="#">English</a></li>--%>
<%--                  </ul>--%>
<%--                </div>--%>
<%--                <div class="header__top__right__auth">--%>
<%--                  <a href="#"><i class="fa fa-user"></i> Login</a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="container">--%>
<%--        <div class="row" style="align-items: center">--%>
<%--          <div class="col-lg-3">--%>
<%--            <div class="header__logo">--%>
<%--              <a href="./index.jps"--%>
<%--                ><img src="img/Logo-Coffee.png" alt=""--%>
<%--              /></a>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="col-lg-7">--%>
<%--            <nav--%>
<%--              class="header__menu"--%>
<%--              style="display: flex; justify-content: center"--%>
<%--            >--%>
<%--              <ul>--%>
<%--                <li class="active">--%>
<%--                  <a href="./index.jps" langkey="nav_home">Home</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                  <a href="./shopGrid.jsp" langkey="nav_shop">Products</a>--%>
<%--                  <ul class="header__menu__dropdown">--%>
<%--                    <li><a href="./shopDetails.jsp">Coffee</a></li>--%>
<%--                    <li><a href="./shopingCart.jsp">Tea</a></li>--%>
<%--                    <li><a href="./checkout.jsp">Bakery</a></li>--%>
<%--                    <li><a href="./checkout.jsp">Milk Tea</a></li>--%>
<%--                  </ul>--%>
<%--                </li>--%>
<%--                <!-- <li><a href="./shopDetails.jsp">Coffee</a></li>--%>
<%--                <li><a href="./blog.html">Tea</a></li> -->--%>
<%--                <li><a href="./blog.html">Member Card</a></li>--%>
<%--                <li>--%>
<%--                  <a href="./contact.jsp" langkey="nav_contact">Contact</a>--%>
<%--                </li>--%>
<%--              </ul>--%>
<%--            </nav>--%>
<%--            <input type="hidden" id="langCode" value="en" />--%>
<%--          </div>--%>
<%--          <div class="col-lg-2">--%>
<%--            <div class="header__cart">--%>
<%--              <ul>--%>
<%--                <li class="coffee-cart">--%>
<%--                  <a href="#">--%>
<%--                    <p>Cart</p>--%>
<%--                    <div class="coffee-cart-content">--%>
<%--                      <i class="fa fa-shopping-cart"></i>--%>
<%--                      <span>2</span>--%>
<%--                    </div>--%>
<%--                  </a>--%>
<%--                  <div--%>
<%--                    class="hidden-info-cart animate__animated animate__fadeInUp"--%>
<%--                  >--%>
<%--                    <div class="content-item-cart-nav">--%>
<%--                      <div class="item-in-cart-nav">--%>
<%--                        <div class="img-in-cart-nav">--%>
<%--                          <img src="img/product/product-5.jpg" alt="" />--%>
<%--                        </div>--%>
<%--                        <div class="info-in-cart-nav">--%>
<%--                          <a href="#">Trà sữa chân châu đường đen</a>--%>
<%--                          <p>--%>
<%--                            <span>5</span> x <span>50.000đ</span>--%>
<%--                            <span class="old-price">75.000đ</span>--%>
<%--                          </p>--%>
<%--                        </div>--%>
<%--                        <a href="#" class="material-icons">delete_forever</a>--%>
<%--                      </div>--%>
<%--                      <div class="item-in-cart-nav">--%>
<%--                        <div class="img-in-cart-nav">--%>
<%--                          <img src="img/product/product-5.jpg" alt="" />--%>
<%--                        </div>--%>
<%--                        <div class="info-in-cart-nav">--%>
<%--                          <a href="#">Trà sữa chân châu đường đen</a>--%>
<%--                          <p>--%>
<%--                            <span>5</span> x <span>50.000đ</span>--%>
<%--                            <span class="old-price">75.000đ</span>--%>
<%--                          </p>--%>
<%--                        </div>--%>
<%--                        <a href="#" class="material-icons">delete_forever</a>--%>
<%--                      </div>--%>
<%--                    </div>--%>

<%--                    <div--%>
<%--                      style="--%>
<%--                        margin: 10px 0px;--%>
<%--                        display: flex;--%>
<%--                        justify-content: space-between;--%>
<%--                      "--%>
<%--                    >--%>
<%--                      <h4 style="color: red">Tổng :</h4>--%>
<%--                      <h4 style="color: red">100.000đ</h4>--%>
<%--                    </div>--%>
<%--                    <a class="check-out-cart-nav" href="#">Thanh toán</a>--%>
<%--                  </div>--%>
<%--                </li>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="humberger__open">--%>
<%--          <i class="fa fa-bars"></i>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </header>--%>
<%--    <!-- Header Section End -->--%>

<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <%
                            String name = (String) request.getAttribute("tenUser");
                        %>
                        <%--                <span>All departments</span>--%>
                        <span><%=name%></span>
                    </div>
                    <ul>
                        <li><a href="#">Coffee</a></li>
                        <li><a href="#">Tea</a></li>
                        <li><a href="#">Milk Tea</a></li>
                        <li><a href="#">Bakery</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <div class="hero__search__categories">All Categories</div>
                            <input type="text" placeholder="What do you need?"/>
                            <button type="submit" class="site-btn">SEARCH</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>support 24/7 time</span>
                        </div>
                    </div>
                </div>
                <div class="hero__item set-bg" data-setbg="img/background1.jpg">
                    <div class="hero__text">
                        <span>Coffe Shop</span>
                        <h2>Coffee <br/>& Tea</h2>
                        <a href="#" class="primary-btn">SHOP NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/categories/cat-1.jpg"
                    >
                        <h5><a href="#">Fresh Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/categories/cat-2.jpg"
                    >
                        <h5><a href="#">Dried Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/categories/cat-3.jpg"
                    >
                        <h5><a href="#">Vegetables</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/categories/cat-4.jpg"
                    >
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/categories/cat-5.jpg"
                    >
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Favorite Product</h2>
                </div>
                <!-- <div class="featured__controls">
                  <ul>
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".oranges">Coffee</li>
                    <li data-filter=".fresh-meat">Tea</li>
                    <li data-filter=".fresh-meat">Milk Tea</li>
                    <li data-filter=".fastfood">Bakery</li>
                  </ul>
                </div> -->
            </div>
        </div>
        <div class="row featured__filter">
            <%ArrayList<Product> listFavorite = (ArrayList<Product>) request.getAttribute("listFavorite");%>
            <%for (Product product : listFavorite) {%>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/featured/feature-1.jpg")%>

                    >
                        <% if (product.getSale() != 0){%>
                            <div class="sale-item">
                            <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                            <p><%=product.getSale()%>%</p>
                        </div>
                        <%}%>

                        <ul class="featured__item__pic__hover">
                            <li>
                                <a href="#" data-toggle="modal" data-target="#productModal<%=product.getId()%>"
                                ><i class="fa fa-retweet"></i
                                ></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#"><%=product.getProductName()%></a></h6>
                        <%if (product.getSale()!= 0){%>
                        <h5>
<%--                            <%=product.get%>--%>
                            Gia dc giam
                            <span
                                    style="
                      text-decoration: line-through;
                      font-size: 14px;
                      color: #b2b2b2;
                    "
                            >50.000đ</span
                            >
                        </h5>
                        <%}else {%>
                        <h5>Gia khong dc giam</h5>
                        <%}%>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt=""/>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.jpg" alt=""/>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Latest Products</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Top Rated Products</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Review Products</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-1.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-2.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/latest-product/lp-3.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="blog__item__text">
    <ul>
        <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
        <li><i class="fa fa-comment-o"></i> 5</li>
    </ul>
    <h5><a href="#">Cooking tips make cooking simple</a></h5>
    <p>
        Sed quia non numquam modi tempora indunt ut labore et dolore
        magnam aliquam quaerat
    </p>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-6">
    <div class="blog__item">
        <div class="blog__item__pic">
            <img src="img/blog/blog-2.jpg" alt=""/>
        </div>
        <div class="blog__item__text">
            <ul>
                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                <li><i class="fa fa-comment-o"></i> 5</li>
            </ul>
            <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
            <p>
                Sed quia non numquam modi tempora indunt ut labore et dolore
                magnam aliquam quaerat
            </p>
        </div>
    </div>
</div>
<div class="col-lg-4 col-md-4 col-sm-6">
    <div class="blog__item">
        <div class="blog__item__pic">
            <img src="img/blog/blog-3.jpg" alt=""/>
        </div>
        <div class="blog__item__text">
            <ul>
                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                <li><i class="fa fa-comment-o"></i> 5</li>
            </ul>
            <h5><a href="#">Visit the clean farm in the US</a></h5>
            <p>
                Sed quia non numquam modi tempora indunt ut labore et dolore
                magnam aliquam quaerat
            </p>
        </div>
    </div>
</div>
</div>
</div>
</section> -->
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->
<!-- Modal -->
<div class="modal fade" id="productModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                >
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal-product">
                    <div class="product-images">
                        <div class="main-image images">
                            <div class="sale-item-modal">
                                <img src="img/sale.png" alt=""/>
                                <p>30%</p>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <h1 style="font-size: 26px">Sữa tươi chân châu đường đen</h1>
                        <div class="price-box">
                            <p class="s-price">
                    <span class="special-price"
                    ><span class="amount" style="font-size: 25px"
                    >850.000đ</span
                    ></span
                    >
                                <span style="color: #b2b2b2; text-decoration: line-through"
                                >500.000đ</span
                                >
                            </p>
                        </div>
                        <a href="#" class="see-all">Xem chi tiết</a>
                        <div class="quick-add-to-cart">
                            <a class="single_add_to_cart_button" href="%">Mua Ngay </a>
                        </div>
                        <div style="height: 200px; overflow-y: scroll">Ngon cực kì</div>
                    </div>
                    <!-- .product-info -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Js Plugins -->
<%@include file="script.jsp" %>
</body>
</html>
