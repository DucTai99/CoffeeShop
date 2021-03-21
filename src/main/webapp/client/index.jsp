<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.CoffeeShop.modal.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
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
<%--    <!-- Header Section End -->--%>

<!-- Hero Section Begin -->
<%
    ArrayList<Product> listFavorite = (ArrayList<Product>) request.getAttribute("listFavorite");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<section class="hero">
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
                <div class="hero__item set-bg" data-setbg=<%=UrlUtils.fullPathClient("img/background1.jpg")%>>
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
                            data-setbg=<%=UrlUtils.fullPathClient("img/categories/cat-1.jpg")%>
                    >
                        <h5><a href="#">Fresh Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/categories/cat-2.jpg")%>
                    >
                        <h5><a href="#">Dried Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/categories/cat-3.jpg")%>
                    >
                        <h5><a href="#">Vegetables</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/categories/cat-4.jpg")%>
                    >
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/categories/cat-5.jpg")%>
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
            <%for (Product product : listFavorite) {%>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient("img/featured/feature-1.jpg")%>

                    >
                        <% if (product.getSale() != 0) {%>
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
                        <h6><a href="#"><%=product.getProductName()%>
                        </a></h6>
                        <%
                            int priceProduct = product.getPriceProducts().get(0).getPrice();
                        %>
                        <%if (product.getSale() != 0) {%>
                        <h5>
                            <%=vnPrice.format(product.getSalePrice(priceProduct))%>đ
                            <span
                                    style="
                      text-decoration: line-through;
                      font-size: 14px;
                      color: #b2b2b2;
                    "
                            ><%=vnPrice.format(priceProduct)%>đ</span
                            >
                        </h5>
                        <%} else {%>
                        <h5><%=vnPrice.format(priceProduct)%>đ
                        </h5>
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
                    <img src=<%=UrlUtils.fullPathClient("img/banner/banner-1.jpg")%> alt=""/>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src=<%=UrlUtils.fullPathClient("img/banner/banner-2.jpg")%> alt=""/>
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
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-1.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security2</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-2.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security3</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-3.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security4</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-1.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security5</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-2.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security6</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-3.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security7</h6>
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
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-1.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-2.jpg")%> alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src=<%=UrlUtils.fullPathClient("img/latest-product/lp-3.jpg")%> alt=""/>
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

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->
<!-- Modal -->
<%for (Product product : listFavorite) {%>
<div class="modal fade" id="productModal<%=product.getId()%>" tabindex="-1" role="dialog">
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
                            <img src="<%=UrlUtils.fullPathClient(product.getImage())%>">
                            <%if (product.getSale() != 0) {%>
                            <div class="sale-item-modal">
                                <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                                <p><%=product.getSale()%>%</p>
                            </div>
                            <%}%>
                        </div>
                    </div>
                    <div class="product-info">
                        <h1 style="font-size: 26px"><%=product.getProductName()%>
                        </h1>
                        <%
                            int priceProduct = product.getPriceProducts().get(0).getPrice();
                        %>
                        <div class="price-box">
                            <p class="s-price">
                                <%if (product.getSale() != 0) {%>
                                <span class="special-price">
                                    <span class="amount"
                                          style="font-size: 25px"><%=vnPrice.format(product.getSalePrice(priceProduct))%>đ</span>
                                </span>
                                <span style="color: #b2b2b2; text-decoration: line-through"><%=vnPrice.format(priceProduct)%>đ</span>
                                <%} else {%>
                                <span class="special-price">
                                    <span class="amount"
                                          style="font-size: 25px"><%=vnPrice.format(priceProduct)%>đ</span>
                                </span>
                                <%}%>
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
<%}%>
<!-- Js Plugins -->
<%@include file="script.jsp" %>
</body>
</html>
