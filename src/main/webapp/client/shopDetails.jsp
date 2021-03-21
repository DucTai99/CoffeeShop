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
                                src=<%=UrlUtils.fullPathClient("img/product/details/product-details-1.jpg")%>
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
                                <input type="text" value="1"/>
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
<%--            <div class="col-lg-12">--%>
<%--                <div class="product__details__tab">--%>
<%--                    <ul class="nav nav-tabs" role="tablist">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a--%>
<%--                                    class="nav-link active"--%>
<%--                                    data-toggle="tab"--%>
<%--                                    href="#tabs-1"--%>
<%--                                    role="tab"--%>
<%--                                    aria-selected="true"--%>
<%--                            >Description</a--%>
<%--                            >--%>
<%--                        </li>--%>
<%--                        <!-- <li class="nav-item">--%>
<%--                          <a--%>
<%--                            class="nav-link"--%>
<%--                            data-toggle="tab"--%>
<%--                            href="#tabs-2"--%>
<%--                            role="tab"--%>
<%--                            aria-selected="false"--%>
<%--                            >Information</a--%>
<%--                          >--%>
<%--                        </li> -->--%>
<%--                        <!-- <li class="nav-item">--%>
<%--                          <a--%>
<%--                            class="nav-link"--%>
<%--                            data-toggle="tab"--%>
<%--                            href="#tabs-3"--%>
<%--                            role="tab"--%>
<%--                            aria-selected="false"--%>
<%--                            >Reviews <span>(1)</span></a--%>
<%--                          >--%>
<%--                        </li> -->--%>
<%--                    </ul>--%>
<%--&lt;%&ndash;                    <div class="tab-content">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div class="tab-pane active" id="tabs-1" role="tabpanel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="product__details__tab__desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <h6>Products Infomation</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Vestibulum ac diam sit amet quam vehicula elementum sed&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    sit amet dui. Pellentesque in ipsum id orci porta dapibus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Proin eget tortor risus. Vivamus suscipit tortor eget&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    felis porttitor volutpat. Vestibulum ac diam sit amet quam&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    vehicula elementum sed sit amet dui. Donec rutrum congue&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    leo eget malesuada. Vivamus suscipit tortor eget felis&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    porttitor volutpat. Curabitur arcu erat, accumsan id&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    imperdiet et, porttitor at sem. Praesent sapien massa,&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    convallis a pellentesque nec, egestas non nisi. Vestibulum&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    ac diam sit amet quam vehicula elementum sed sit amet dui.&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Vestibulum ante ipsum primis in faucibus orci luctus et&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    ultrices posuere cubilia Curae; Donec velit neque, auctor&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    sit amet aliquam vel, ullamcorper sit amet ligula. Proin&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    eget tortor risus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Praesent sapien massa, convallis a pellentesque nec,&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    egestas non nisi. Lorem ipsum dolor sit amet, consectetur&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    adipiscing elit. Mauris blandit aliquet elit, eget&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    tincidunt nibh pulvinar a. Cras ultricies ligula sed magna&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    dictum porta. Cras ultricies ligula sed magna dictum&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    porta. Sed porttitor lectus nibh. Mauris blandit aliquet&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    sit amet quam vehicula elementum sed sit amet dui. Sed&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    porttitor lectus nibh. Vestibulum ac diam sit amet quam&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    vehicula elementum sed sit amet dui. Proin eget tortor&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    risus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <!-- <div class="tab-pane" id="tabs-2" role="tabpanel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                          <div class="product__details__tab__desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h6>Products Infomation</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Vestibulum ac diam sit amet quam vehicula elementum sed&ndash;%&gt;--%>
<%--&lt;%&ndash;                              sit amet dui. Pellentesque in ipsum id orci porta dapibus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Proin eget tortor risus. Vivamus suscipit tortor eget&ndash;%&gt;--%>
<%--&lt;%&ndash;                              felis porttitor volutpat. Vestibulum ac diam sit amet quam&ndash;%&gt;--%>
<%--&lt;%&ndash;                              vehicula elementum sed sit amet dui. Donec rutrum congue&ndash;%&gt;--%>
<%--&lt;%&ndash;                              leo eget malesuada. Vivamus suscipit tortor eget felis&ndash;%&gt;--%>
<%--&lt;%&ndash;                              porttitor volutpat. Curabitur arcu erat, accumsan id&ndash;%&gt;--%>
<%--&lt;%&ndash;                              imperdiet et, porttitor at sem. Praesent sapien massa,&ndash;%&gt;--%>
<%--&lt;%&ndash;                              convallis a pellentesque nec, egestas non nisi. Vestibulum&ndash;%&gt;--%>
<%--&lt;%&ndash;                              ac diam sit amet quam vehicula elementum sed sit amet dui.&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Vestibulum ante ipsum primis in faucibus orci luctus et&ndash;%&gt;--%>
<%--&lt;%&ndash;                              ultrices posuere cubilia Curae; Donec velit neque, auctor&ndash;%&gt;--%>
<%--&lt;%&ndash;                              sit amet aliquam vel, ullamcorper sit amet ligula. Proin&ndash;%&gt;--%>
<%--&lt;%&ndash;                              eget tortor risus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Praesent sapien massa, convallis a pellentesque nec,&ndash;%&gt;--%>
<%--&lt;%&ndash;                              egestas non nisi. Lorem ipsum dolor sit amet, consectetur&ndash;%&gt;--%>
<%--&lt;%&ndash;                              adipiscing elit. Mauris blandit aliquet elit, eget&ndash;%&gt;--%>
<%--&lt;%&ndash;                              tincidunt nibh pulvinar a. Cras ultricies ligula sed magna&ndash;%&gt;--%>
<%--&lt;%&ndash;                              dictum porta. Cras ultricies ligula sed magna dictum&ndash;%&gt;--%>
<%--&lt;%&ndash;                              porta. Sed porttitor lectus nibh. Mauris blandit aliquet&ndash;%&gt;--%>
<%--&lt;%&ndash;                              elit, eget tincidunt nibh pulvinar a.&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                          </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div> -->&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <!-- <div class="tab-pane" id="tabs-3" role="tabpanel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                          <div class="product__details__tab__desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h6>Products Infomation</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Vestibulum ac diam sit amet quam vehicula elementum sed&ndash;%&gt;--%>
<%--&lt;%&ndash;                              sit amet dui. Pellentesque in ipsum id orci porta dapibus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Proin eget tortor risus. Vivamus suscipit tortor eget&ndash;%&gt;--%>
<%--&lt;%&ndash;                              felis porttitor volutpat. Vestibulum ac diam sit amet quam&ndash;%&gt;--%>
<%--&lt;%&ndash;                              vehicula elementum sed sit amet dui. Donec rutrum congue&ndash;%&gt;--%>
<%--&lt;%&ndash;                              leo eget malesuada. Vivamus suscipit tortor eget felis&ndash;%&gt;--%>
<%--&lt;%&ndash;                              porttitor volutpat. Curabitur arcu erat, accumsan id&ndash;%&gt;--%>
<%--&lt;%&ndash;                              imperdiet et, porttitor at sem. Praesent sapien massa,&ndash;%&gt;--%>
<%--&lt;%&ndash;                              convallis a pellentesque nec, egestas non nisi. Vestibulum&ndash;%&gt;--%>
<%--&lt;%&ndash;                              ac diam sit amet quam vehicula elementum sed sit amet dui.&ndash;%&gt;--%>
<%--&lt;%&ndash;                              Vestibulum ante ipsum primis in faucibus orci luctus et&ndash;%&gt;--%>
<%--&lt;%&ndash;                              ultrices posuere cubilia Curae; Donec velit neque, auctor&ndash;%&gt;--%>
<%--&lt;%&ndash;                              sit amet aliquam vel, ullamcorper sit amet ligula. Proin&ndash;%&gt;--%>
<%--&lt;%&ndash;                              eget tortor risus.&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                          </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div> -->&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </div>--%>
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
                            data-setbg=<%=UrlUtils.fullPathClient("img/product/product-1.jpg")%>
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
                            <img src="img/sale.png" alt=""/>
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
                            <img src="img/sale.png" alt=""/>
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
                            <img src="img/sale.png" alt=""/>
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
