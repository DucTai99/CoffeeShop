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
<%@include file="header.jsp" %>

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
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section
        class="breadcrumb-section set-bg"
        data-setbg=<%=UrlUtils.fullPathClient("img/coffee-background.jpg")%>
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
                                <input type="radio" id="large"/>
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="medium">
                                Medium
                                <input type="radio" id="medium"/>
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="small">
                                Small
                                <input type="radio" id="small"/>
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
                                            <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-1.jpg")%> alt=""/>
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
                                            data-setbg=<%=UrlUtils.fullPathClient("img/product/discount/pd-1.jpg")%>
                                    >
                                        <div class="sale-item">
                                            <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
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
                                            <img src="img/sale.png" alt=""/>
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
                                            <img src="img/sale.png" alt=""/>
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
                                            <img src="img/sale.png" alt=""/>
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
                                            <img src="img/sale.png" alt=""/>
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
                                    data-setbg=<%=UrlUtils.fullPathClient("img/product/product-1.jpg")%>
                            >
                                <div class="sale-item">
                                    <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                                    <img src="img/sale.png" alt=""/>
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
                            <img alt="" src=<%=UrlUtils.fullPathClient("img/product/product-10.jpg")%>/>
                            <div class="sale-item-modal">
                                <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
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
