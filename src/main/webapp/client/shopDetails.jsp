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
<%
    Product product = (Product) request.getAttribute("product");
    List<Product> listRelated = (List<Product>) request.getAttribute("listRelated");
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
                    <%@include file="search.jsp" %>
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
                        <a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a>
                        <a href="<%=UrlUtils.pathHost("ShopGridController")%>">Products</a>
                        <span><%=product.getProductName()%></span>
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
                                src=<%=UrlUtils.fullPathClient(product.getImage())%>
                                        alt=""
                        />
                        <%if (product.getSale() > 0) {%>
                        <div class="sale-item">
                            <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                            <p><%=product.getSale()%>%</p>
                        </div>
                        <%}%>
                    </div>

                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3><%=product.getProductName()%>
                    </h3>
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <%for (int i = 0; i < product.getPriceProducts().size(); i++) {%>
                        <li class="nav-item">
                            <a
                                    class=<%=(i == 0) ? "'nav-link active'" : "nav-link"%>
                                            id=<%="pills-tab-" + product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                                    data-toggle="pill"
                                    data-idsize="<%=product.getPriceProducts().get(i).getSizeProduct().getId()%>"
                                    href=<%="#pills-"+product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                                            role="tab"
                                    aria-controls=<%="pills-"+product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                                            aria-selected=<%=(i == 0) ? "true" : "false"%>
                            ><%=product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                            </a>
                        </li>
                        <%}%>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <%for (int i = 0; i < product.getPriceProducts().size(); i++) {%>
                        <div
                                class=<%=(i == 0) ? "'tab-pane fade show active'" : "'tab-pane fade'"%>
                                        id=<%="pills-" + product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                                role="tabpanel"
                                aria-labelledby=<%="pills-tab-" + product.getPriceProducts().get(i).getSizeProduct().getSizeName()%>
                        >
                            <%int price = product.getPriceProducts().get(i).getPrice();%>
                            <%if (product.getSale() > 0) {%>
                            <%=vnPrice.format(product.getSalePrice(price))%>đ <span
                                class="old-price-product"><%=vnPrice.format(price)%>đ</span>
                            <%} else {%>
                            <%=vnPrice.format(price)%>đ
                            <%}%>
                        </div>
                        <%}%>
                    </div>
                    <p>
                        Rất là ngon
                    </p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1"/>
                            </div>
                        </div>
                    </div>
                    <%if(cart != null){%>
                    <a href="#" data-idproduct="<%=product.getId()%>" class="primary-btn add-products">ADD TO CARD</a>
                    <%} else {%>
                    <a href="<%=UrlUtils.fullPathClient("signIn.jsp")%>" class="primary-btn">ADD TO CARD</a>
                    <%}%>
                    <ul>
                        <li>
                            <b>Shipping</b>
                            <span>01 day shipping. <span>Free pickup today</span></span>
                        </li>
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
            <%for (Product p : listRelated){%>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div
                            class="product__item__pic set-bg"
                            data-setbg=<%=UrlUtils.fullPathClient(p.getImage())%>
                    >
                        <% if (p.getSale() != 0) {%>
                        <div class="sale-item">
                            <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                            <p><%=p.getSale()%>%</p>
                        </div>
                        <%}%>
                        <ul class="product__item__pic__hover">
                            <li>
                                <a href="#" data-toggle="modal" data-target="#productModal<%=p.getId()%>"
                                ><i class="fa fa-retweet"></i
                                ></a>
                            </li>
                            <li>
                                <%if(cart != null){%>
                                <a class="add-quantily" data-idproduct=<%=p.getId()%> href="#"><i class="fa fa-shopping-cart"></i></a>
                                <%} else {%>
                                <a href="<%=UrlUtils.fullPathClient("signIn.jsp")%>"><i class="fa fa-shopping-cart"></i></a>
                                <%}%>
                            </li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + p.getId())%>"><%=p.getProductName()%></a></h6>
                        <%int priceProduct = p.getPriceProducts().get(0).getPrice();%>
                        <%if (p.getSale() != 0) {%>
                        <h5><%=vnPrice.format(p.getSalePrice(priceProduct))%>đ <span class="old-price-p"><%=vnPrice.format(priceProduct)%>đ</span></h5>
                        <%} else {%>
                        <h5><%=vnPrice.format(priceProduct)%>đ</h5>
                        <%}%>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->
<%for (Product p : listRelated) {%>
<div class="modal fade" id="productModal<%=p.getId()%>" tabindex="-1" role="dialog">
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
                            <img src="<%=UrlUtils.fullPathClient(p.getImage())%>">
                            <%if (p.getSale() != 0) {%>
                            <div class="sale-item-modal">
                                <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                                <p><%=p.getSale()%>%</p>
                            </div>
                            <%}%>
                        </div>
                    </div>
                    <div class="product-info">
                        <h1 style="font-size: 26px"><%=p.getProductName()%>
                        </h1>
                        <%
                            int priceProduct = p.getPriceProducts().get(0).getPrice();
                        %>
                        <div class="price-box">
                            <p class="s-price">
                                <%if (p.getSale() != 0) {%>
                                <span class="special-price">
                                    <span class="amount"
                                          style="font-size: 25px"><%=vnPrice.format(p.getSalePrice(priceProduct))%>đ</span>
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
                        <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + p.getId())%>" class="see-all">Xem chi tiết</a>
                        <div class="quick-add-to-cart">
                            <%if (cart != null){%>
                            <a class="single_add_to_cart_button" data-idproduct="<%=product.getId()%>" href="#">Mua Ngay </a>
                            <%} else {%>
                            <a class="single_add_to_cart_button-none" href="<%=UrlUtils.fullPathClient("signIn.jsp")%>">Mua Ngay </a>
                            <%}%>
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
