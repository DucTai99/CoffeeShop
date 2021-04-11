<%@ page import="com.example.CoffeeShop.modal.Product" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.example.CoffeeShop.modal.SizeProduct" %>
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
<%
    List<Product> listAllProduct = (List<Product>) request.getAttribute("listAllProduct");
    List<Product> listLatest = (List<Product>) request.getAttribute("listLatest");
    List<Product> listProductType = (List<Product>) request.getAttribute("listProductType");
    List<Product> listProductPage = (List<Product>) request.getAttribute("listProductPage");
    List<Product> listAllSaleProduct = (List<Product>) request.getAttribute("listAllSaleProduct");
    List<SizeProduct> listSizeProduct = (List<SizeProduct>) request.getAttribute("listSizeProduct");
    int numberOfPage = (int) request.getAttribute("numberOfPage");
    int idType = (int) request.getAttribute("idType");
    int pageCurrent = (int) request.getAttribute("pageCurrent");
    String pageIndex = (pageCurrent == 1) ? "" : "&page=";
    String typeIndex = (idType == 0) ? "" : "&idType=";
%>
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
                        <%for (TypeProduct typeProduct : listTypeProduct) {%>
                        <li>
                            <a href="<%=UrlUtils.pathHost("ShopGridController?idType=" + typeProduct.getId())+"#targetProduct"%>"><%=typeProduct.getTypeProduct()%>
                            </a></li>
                        <%}%>
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
                        <a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a>
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
                            <%for (TypeProduct typeProduct : listTypeProduct) {%>
                            <li>
                                <a href="<%=UrlUtils.pathHost("ShopGridController?idType=" + typeProduct.getId())+"#targetProduct"%>"><%=typeProduct.getTypeProduct()%>
                                </a></li>
                            <%}%>
                        </ul>
                    </div>

                    <div class="sidebar__item">
                        <h4>Popular Size</h4>
                        <%for (SizeProduct sizeProduct : listSizeProduct) {%>
                        <div class="sidebar__item__size">
                            <label for="<%=sizeProduct.getSizeName()%>>">
                                <%=sizeProduct.getSizeName()%>
                                <input type="radio" id="<%=sizeProduct.getSizeName()%>"/>
                            </label>
                        </div>
                        <%}%>
                    </div>
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Latest Products</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <% for (int i = 0; i < listLatest.size()/2; i++) {%>
                                    <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + listLatest.get(i).getId())%>" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img style="width: 110px; height: 110px" src=<%=UrlUtils.fullPathClient(listLatest.get(i).getImage())%> alt=""/>
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6><%=listLatest.get(i).getProductName()%></h6>
                                            <%int price = listLatest.get(i).getPriceProducts().get(0).getPrice();%>
                                            <span><%=((listLatest.get(i).getSale()!=0) ? vnPrice.format(listLatest.get(i).getSalePrice(price)) : vnPrice.format(price))%>đ</span>
                                        </div>
                                    </a>
                                    <%}%>
                                </div>
                                <div class="latest-prdouct__slider__item">
                                    <% for (int i = listLatest.size()/2; i < listLatest.size(); i++) {%>
                                    <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + listLatest.get(i).getId())%>" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img style="width: 110px; height: 110px" src=<%=UrlUtils.fullPathClient(listLatest.get(i).getImage())%> alt=""/>
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6><%=listLatest.get(i).getProductName()%></h6>
                                            <%int price = listLatest.get(i).getPriceProducts().get(0).getPrice();%>
                                            <span><%=((listLatest.get(i).getSale()!=0) ? vnPrice.format(listLatest.get(i).getSalePrice(price)) : vnPrice.format(price))%>đ</span>
                                        </div>
                                    </a>
                                    <%}%>
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
                            <%for (Product product : listAllSaleProduct) {%>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg=<%=UrlUtils.fullPathClient(product.getImage())%>
                                    >
                                        <div class="sale-item">
                                            <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                                            <p><%=product.getSale()%>%</p>
                                        </div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#" data-toggle="modal"
                                                   data-target="#productModal<%=product.getId()%>"
                                                ><i class="fa fa-retweet"></i
                                                ></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span><%=product.getTypeProduct().getTypeProduct()%></span>
                                        <h5>
                                            <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + product.getId())%>"><%=product.getProductName()%>
                                            </a></h5>
                                        <%
                                            int priceProduct = product.getPriceProducts().get(0).getPrice();
                                        %>
                                        <div class="product__item__price">
                                            <%=vnPrice.format(product.getSalePrice(priceProduct))%>đ
                                            <span><%=vnPrice.format(priceProduct)%>đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
                <div id="change">
                    <div class="filter__item">
                        <div class="row" id="targetProduct">
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
                                    <h6><span><%=listProductType.size()%></span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__sort"
                                     style="display: flex; align-items: center; justify-content: flex-end">
                                    <span>Type</span>
                                    <select id="typeProduct">
                                        <option value="0">All</option>
                                        <%for (TypeProduct typeProduct : listTypeProduct) {%>
                                        <option <%=(idType == typeProduct.getId()? "selected" : "")%> value="<%=typeProduct.getId()%>"><%=typeProduct.getTypeProduct()%>
                                        </option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%for (Product product : listProductPage) {%>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div
                                        class="product__item__pic set-bg"
                                        data-setbg=<%=UrlUtils.fullPathClient(product.getImage())%>
                                >
                                    <% if (product.getSale() != 0) {%>
                                    <div class="sale-item">
                                        <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                                        <p><%=product.getSale()%>%</p>
                                    </div>
                                    <%}%>
                                    <ul class="product__item__pic__hover">
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
                                <div class="product__item__text">
                                    <h6>
                                        <a href=<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + product.getId())%>><%=product.getProductName()%>
                                        </a>
                                    </h6>
                                    <%int priceProduct = product.getPriceProducts().get(0).getPrice();%>
                                    <%if (product.getSale() != 0) {%>
                                    <h5>
                                        <%=vnPrice.format(product.getSalePrice(priceProduct))%>đ
                                        <span class="old-price-product"><%=vnPrice.format(priceProduct)%>đ</span>
                                    </h5>
                                    <%} else {%>
                                    <h5><%=vnPrice.format(priceProduct)%>đ</h5>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <div class="product__pagination">
                        <%for (int i = 1; i <= numberOfPage; i++) {%>
                        <a style="<%=(i == pageCurrent) ? "background: #6b3906; color: #ffffff" : ""%>" data-page = <%=i%> href="#"><%=i%>
                        </a>
                        <%}%>
                        <%int nextPage = (pageCurrent + 1 > numberOfPage) ? numberOfPage : pageCurrent + 1;%>
                        <a data-page = <%=nextPage%> href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
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
<%for (Product product : listAllProduct) {%>
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
                        <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + product.getId())%>"
                           class="see-all">Xem chi tiết</a>
                        <div class="quick-add-to-cart">
                            <a class="single_add_to_cart_button" href="#">Mua Ngay </a>
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
