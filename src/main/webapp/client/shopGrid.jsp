<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Ogani Template" />
    <meta name="keywords" content="Ogani, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Coffee Shop</title>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet"
    />
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>

  <body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
  <%@include file="header.jsp"%>
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
<%--          <li class="active"><a href="./index.jsp">Home</a></li>--%>
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
<%--              <a href="./index.jsp"--%>
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
<%--                  <a href="./index.jsp" langkey="nav_home">Home</a>--%>
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
    <section class="hero hero-normal">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <div class="hero__categories">
              <div class="hero__categories__all">
                <i class="fa fa-bars"></i>
                <span>All departments</span>
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
                  <input type="text" placeholder="What do you need?" />
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
          </div>
        </div>
      </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section
      class="breadcrumb-section set-bg"
      data-setbg="img/coffee-background.jpg"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>Coffee Shop</h2>
              <div class="breadcrumb__option">
                <a href="./index.jsp">Home</a>
                <span>Products</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-5">
            <div class="sidebar">
              <div class="sidebar__item">
                <h4>Department</h4>
                <ul>
                  <li><a href="#">Coffee</a></li>
                  <li><a href="#">Tea</a></li>
                  <li><a href="#">Milk Tea</a></li>
                  <li><a href="#">Bakery</a></li>
                </ul>
              </div>

              <div class="sidebar__item">
                <h4>Popular Size</h4>
                <div class="sidebar__item__size">
                  <label for="large">
                    Large
                    <input type="radio" id="large" />
                  </label>
                </div>
                <div class="sidebar__item__size">
                  <label for="medium">
                    Medium
                    <input type="radio" id="medium" />
                  </label>
                </div>
                <div class="sidebar__item__size">
                  <label for="small">
                    Small
                    <input type="radio" id="small" />
                  </label>
                </div>
              </div>
              <div class="sidebar__item">
                <div class="latest-product__text">
                  <h4>Latest Products</h4>
                  <div class="latest-product__slider owl-carousel">
                    <div class="latest-prdouct__slider__item">
                      <a href="#" class="latest-product__item">
                        <div class="latest-product__item__pic">
                          <img src="img/latest-product/lp-1.jpg" alt="" />
                        </div>
                        <div class="latest-product__item__text">
                          <h6>Crab Pool Security</h6>
                          <span>$30.00</span>
                        </div>
                      </a>
                      <a href="#" class="latest-product__item">
                        <div class="latest-product__item__pic">
                          <img src="img/latest-product/lp-2.jpg" alt="" />
                        </div>
                        <div class="latest-product__item__text">
                          <h6>Crab Pool Security</h6>
                          <span>$30.00</span>
                        </div>
                      </a>
                      <a href="#" class="latest-product__item">
                        <div class="latest-product__item__pic">
                          <img src="img/latest-product/lp-3.jpg" alt="" />
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
                          <img src="img/latest-product/lp-1.jpg" alt="" />
                        </div>
                        <div class="latest-product__item__text">
                          <h6>Crab Pool Security</h6>
                          <span>$30.00</span>
                        </div>
                      </a>
                      <a href="#" class="latest-product__item">
                        <div class="latest-product__item__pic">
                          <img src="img/latest-product/lp-2.jpg" alt="" />
                        </div>
                        <div class="latest-product__item__text">
                          <h6>Crab Pool Security</h6>
                          <span>$30.00</span>
                        </div>
                      </a>
                      <a href="#" class="latest-product__item">
                        <div class="latest-product__item__pic">
                          <img src="img/latest-product/lp-3.jpg" alt="" />
                        </div>
                        <div class="latest-product__item__text">
                          <h6>Trà sen hạt vàng</h6>
                          <span>$30.00</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-9 col-md-7">
            <div class="product__discount">
              <div class="section-title product__discount__title">
                <h2>Sale Off</h2>
              </div>
              <div class="row">
                <div class="product__discount__slider owl-carousel">
                  <div class="col-lg-4">
                    <div class="product__discount__item">
                      <div
                        class="product__discount__item__pic set-bg"
                        data-setbg="img/product/discount/pd-1.jpg"
                      >
                        <div class="sale-item">
                          <img src="img/sale.png" alt="" />
                          <p>30%</p>
                        </div>
                        <ul class="product__item__pic__hover">
                          <!-- <li>
                            <a href="#"><i class="fa fa-heart"></i></a>
                          </li> -->
                          <li>
                            <a
                              href="#"
                              data-toggle="modal"
                              data-target="#productModal1"
                              ><i class="fa fa-retweet"></i
                            ></a>
                          </li>
                          <li>
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                          </li>
                        </ul>
                      </div>
                      <div class="product__discount__item__text">
                        <span>Tea</span>
                        <h5><a href="#">Trà sen hạt vàng</a></h5>
                        <div class="product__item__price">
                          30.000đ <span>56.000đ</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="product__discount__item">
                      <div
                        class="product__discount__item__pic set-bg"
                        data-setbg="img/product/discount/pd-1.jpg"
                      >
                        <div class="sale-item">
                          <img src="img/sale.png" alt="" />
                          <p>30%</p>
                        </div>
                        <ul class="product__item__pic__hover">
                          <!-- <li>
                            <a href="#"><i class="fa fa-heart"></i></a>
                          </li> -->
                          <li>
                            <a
                              href="#"
                              data-toggle="modal"
                              data-target="#productModal1"
                              ><i class="fa fa-retweet"></i
                            ></a>
                          </li>
                          <li>
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                          </li>
                        </ul>
                      </div>
                      <div class="product__discount__item__text">
                        <span>Tea</span>
                        <h5><a href="#">Trà sen hạt vàng</a></h5>
                        <div class="product__item__price">
                          30.000đ <span>56.000đ</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="product__discount__item">
                      <div
                        class="product__discount__item__pic set-bg"
                        data-setbg="img/product/discount/pd-1.jpg"
                      >
                        <div class="sale-item">
                          <img src="img/sale.png" alt="" />
                          <p>30%</p>
                        </div>
                        <ul class="product__item__pic__hover">
                          <!-- <li>
                            <a href="#"><i class="fa fa-heart"></i></a>
                          </li> -->
                          <li>
                            <a
                              href="#"
                              data-toggle="modal"
                              data-target="#productModal1"
                              ><i class="fa fa-retweet"></i
                            ></a>
                          </li>
                          <li>
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                          </li>
                        </ul>
                      </div>
                      <div class="product__discount__item__text">
                        <span>Tea</span>
                        <h5><a href="#">Trà sen hạt vàng</a></h5>
                        <div class="product__item__price">
                          30.000đ <span>56.000đ</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="product__discount__item">
                      <div
                        class="product__discount__item__pic set-bg"
                        data-setbg="img/product/discount/pd-1.jpg"
                      >
                        <div class="sale-item">
                          <img src="img/sale.png" alt="" />
                          <p>30%</p>
                        </div>
                        <ul class="product__item__pic__hover">
                          <!-- <li>
                            <a href="#"><i class="fa fa-heart"></i></a>
                          </li> -->
                          <li>
                            <a
                              href="#"
                              data-toggle="modal"
                              data-target="#productModal1"
                              ><i class="fa fa-retweet"></i
                            ></a>
                          </li>
                          <li>
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                          </li>
                        </ul>
                      </div>
                      <div class="product__discount__item__text">
                        <span>Tea</span>
                        <h5><a href="#">Trà sen hạt vàng</a></h5>
                        <div class="product__item__price">
                          30.000đ <span>56.000đ</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="product__discount__item">
                      <div
                        class="product__discount__item__pic set-bg"
                        data-setbg="img/product/discount/pd-1.jpg"
                      >
                        <div class="sale-item">
                          <img src="img/sale.png" alt="" />
                          <p>30%</p>
                        </div>
                        <ul class="product__item__pic__hover">
                          <li>
                            <a
                              href="#"
                              data-toggle="modal"
                              data-target="#productModal1"
                              ><i class="fa fa-retweet"></i
                            ></a>
                          </li>
                          <li>
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                          </li>
                        </ul>
                      </div>
                      <div class="product__discount__item__text">
                        <span>Tea</span>
                        <h5><a href="#">Trà sen hạt vàng</a></h5>
                        <div class="product__item__price">
                          30.000đ <span>56.000đ</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="filter__item">
              <div class="row">
                <div class="col-lg-4 col-md-5">
                  <div class="filter__sort">
                    <span>Sort By</span>
                    <select>
                      <option value="0">Default</option>
                      <option value="0">Default</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4">
                  <div class="filter__found">
                    <h6><span>16</span> Products found</h6>
                  </div>
                </div>
                <!-- <div class="col-lg-4 col-md-3">
                  <div class="filter__option">
                    <span class="icon_grid-2x2"></span>
                    <span class="icon_ul"></span>
                  </div>
                </div> -->
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div
                    class="product__item__pic set-bg"
                    data-setbg="img/product/product-1.jpg"
                  >
                    <div class="sale-item">
                      <img src="img/sale.png" alt="" />
                      <p>30%</p>
                    </div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#productModal1"
                          ><i class="fa fa-retweet"></i
                        ></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__item__text">
                    <h6><a href="#">Cà Phê Espresso</a></h6>
                    <h5>
                      30.000đ
                      <span class="old-price-product">56.000đ</span>
                    </h5>
                  </div>
                </div>
              </div>
            </div>
            <div class="product__pagination">
              <a href="#">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#"><i class="fa fa-long-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <%@include file="footer.jsp"%>
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
                  <img alt="" src="img/product/product-10.jpg" />
                  <div class="sale-item-modal">
                    <img src="img/sale.png" alt="" />
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
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script src="js/lang.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
