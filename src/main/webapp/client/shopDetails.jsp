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
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
        <a href="#"><img src="img/Logo-Coffee.png" alt="" /></a>
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
          <img src="img/language.png" alt="" />
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
          <li class="active"><a href="./index.jsp">Home</a></li>
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
                  <img src="img/language.png" alt="" />
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
              <a href="./index.jsp"
                ><img src="img/Logo-Coffee.png" alt=""
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
                  <a href="./index.jsp" langkey="nav_home">Home</a>
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
                      <div class="item-in-cart-nav">
                        <div class="img-in-cart-nav">
                          <img src="img/product/product-5.jpg" alt="" />
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
                      <div class="item-in-cart-nav">
                        <div class="img-in-cart-nav">
                          <img src="img/product/product-5.jpg" alt="" />
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
              <h2>Product Detail</h2>
              <div class="breadcrumb__option">
                <a href="./index.jsp">Home</a>
                <a href="./index.jsp">Products</a>
                <span>Product Detail</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="product__details__pic">
              <div class="product__details__pic__item">
                <img
                  class="product__details__pic__item--large"
                  src="img/product/details/product-details-1.jpg"
                  alt=""
                />
              </div>
              <!-- <div class="product__details__pic__slider owl-carousel">
                <img
                  data-imgbigurl="img/product/details/product-details-2.jpg"
                  src="img/product/details/thumb-1.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-3.jpg"
                  src="img/product/details/thumb-2.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-5.jpg"
                  src="img/product/details/thumb-3.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-4.jpg"
                  src="img/product/details/thumb-4.jpg"
                  alt=""
                />
              </div> -->
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="product__details__text">
              <h3>Vetgetable’s Package</h3>
              <!-- <div class="product__details__rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <span>(18 reviews)</span>
              </div> -->
              <div class="product__details__price">$50.00</div>
              <p>
                Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.
                Vestibulum ac diam sit amet quam vehicula elementum sed sit amet
                dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam
                vehicula elementum sed sit amet dui. Proin eget tortor risus.
              </p>
              <div class="product__details__quantity">
                <div class="quantity">
                  <div class="pro-qty">
                    <input type="text" value="1" />
                  </div>
                </div>
              </div>
              <a href="#" class="primary-btn">ADD TO CARD</a>
              <!-- <a href="#" class="heart-icon"
                ><span class="icon_heart_alt"></span
              ></a> -->
              <ul>
                <!-- <li><b>Availability</b> <span>In Stock</span></li> -->
                <li>
                  <b>Shipping</b>
                  <span>01 day shipping. <samp>Free pickup today</samp></span>
                </li>
                <!-- <li><b>Weight</b> <span>0.5 kg</span></li> -->
                <li>
                  <b>Share on</b>
                  <div class="share">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="product__details__tab">
              <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    data-toggle="tab"
                    href="#tabs-1"
                    role="tab"
                    aria-selected="true"
                    >Description</a
                  >
                </li>
                <!-- <li class="nav-item">
                  <a
                    class="nav-link"
                    data-toggle="tab"
                    href="#tabs-2"
                    role="tab"
                    aria-selected="false"
                    >Information</a
                  >
                </li> -->
                <!-- <li class="nav-item">
                  <a
                    class="nav-link"
                    data-toggle="tab"
                    href="#tabs-3"
                    role="tab"
                    aria-selected="false"
                    >Reviews <span>(1)</span></a
                  >
                </li> -->
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                    <p>
                      Praesent sapien massa, convallis a pellentesque nec,
                      egestas non nisi. Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Mauris blandit aliquet elit, eget
                      tincidunt nibh pulvinar a. Cras ultricies ligula sed magna
                      dictum porta. Cras ultricies ligula sed magna dictum
                      porta. Sed porttitor lectus nibh. Mauris blandit aliquet
                      elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam
                      sit amet quam vehicula elementum sed sit amet dui. Sed
                      porttitor lectus nibh. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Proin eget tortor
                      risus.
                    </p>
                  </div>
                </div>
                <!-- <div class="tab-pane" id="tabs-2" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                    <p>
                      Praesent sapien massa, convallis a pellentesque nec,
                      egestas non nisi. Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Mauris blandit aliquet elit, eget
                      tincidunt nibh pulvinar a. Cras ultricies ligula sed magna
                      dictum porta. Cras ultricies ligula sed magna dictum
                      porta. Sed porttitor lectus nibh. Mauris blandit aliquet
                      elit, eget tincidunt nibh pulvinar a.
                    </p>
                  </div>
                </div> -->
                <!-- <div class="tab-pane" id="tabs-3" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                  </div>
                </div> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="section-title related__product__title">
              <h2>Related Product</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-4 col-sm-6">
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
                  <!-- <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li> -->
                  <li>
                    <a href="#" data-toggle="modal" data-target="#productModal1"
                      ><i class="fa fa-retweet"></i
                    ></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Trà sữa sen vàng</a></h6>
                <h5>$30.00 <span class="old-price-p">56.000đ</span></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
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
                  <!-- <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li> -->
                  <li>
                    <a href="#" data-toggle="modal" data-target="#productModal1"
                      ><i class="fa fa-retweet"></i
                    ></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Trà sữa sen vàng</a></h6>
                <h5>$30.00 <span class="old-price-p">56.000đ</span></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
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
                  <!-- <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li> -->
                  <li>
                    <a href="#" data-toggle="modal" data-target="#productModal1"
                      ><i class="fa fa-retweet"></i
                    ></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Trà sữa sen vàng</a></h6>
                <h5>$30.00 <span class="old-price-p">56.000đ</span></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
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
                  <!-- <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li> -->
                  <li>
                    <a href="#" data-toggle="modal" data-target="#productModal1"
                      ><i class="fa fa-retweet"></i
                    ></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Trà sữa sen vàng</a></h6>
                <h5>$30.00 <span class="old-price-p">56.000đ</span></h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer__about">
              <div class="footer__about__logo">
                <a href="./index.jsp"
                  ><img src="img/Logo-Coffee.png" alt=""
                /></a>
              </div>
              <ul>
                <li>Address: 60-49 Road 11378 New York</li>
                <li>Phone: +65 11.188.888</li>
                <li>Email: hello@colorlib.com</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
            <div class="footer__widget">
              <h6>Useful Links</h6>
              <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">About Our Shop</a></li>
                <li><a href="#">Secure Shopping</a></li>
                <li><a href="#">Delivery infomation</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Our Sitemap</a></li>
              </ul>
              <ul>
                <li><a href="#">Who We Are</a></li>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Innovation</a></li>
                <li><a href="#">Testimonials</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-4 col-md-12">
            <div class="footer__widget">
              <h6>Join Our Newsletter Now</h6>
              <p>
                Get E-mail updates about our latest shop and special offers.
              </p>
              <form action="#">
                <input type="text" placeholder="Enter your mail" />
                <button type="submit" class="site-btn">Subscribe</button>
              </form>
              <div class="footer__widget__social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-pinterest"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="footer__copyright">
              <div class="footer__copyright__text">
                <p>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  All rights reserved | This template is made with
                  <i class="fa fa-heart" aria-hidden="true"></i> by
                  <a href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
              </div>
              <div class="footer__copyright__payment">
                <img src="img/payment-item.png" alt="" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
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
