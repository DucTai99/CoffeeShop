<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
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
    int subTotal = (int) request.getAttribute("subTotal");
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
                    <h2>Shopping Cart</h2>
                    <div class="breadcrumb__option">
                        <a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a>
                        <span>Shopping Cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Select</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (ProductsInCart productsInCart : cart.getListProductsInCart()) {%>
                        <tr>
                            <td class="shoping__cart__item">
                                <img style="width: 100px; height: 100px" src=<%=UrlUtils.fullPathClient(productsInCart.getProduct().getImage())%> alt=""/>
                                <h5><%=productsInCart.getProduct().getProductName()%></h5>
                            </td>
                            <td class="shoping__cart__price">
                                <%
                                    int price = cart.getPriceProductSize(productsInCart);
                                %>
                                <%if (productsInCart.getSale() != 0) {%>
                                <span class="old-price-cart"><%=vnPrice.format(price)%>đ</span>
                                <span><%=vnPrice.format(productsInCart.getProduct().getSalePrice(price))%>đ</span>
                                <%} else {%>
                                <span><%=vnPrice.format(price)%>đ</span>
                                <%}%>
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="<%=productsInCart.getQuantity()%>"/>
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total"><%=vnPrice.format(cart.totalProduct(productsInCart))%>đ</td>
                            <td>
                                <div class="form-check">
                                    <input
                                            class="form-check-input position-static blankCheckbox"
                                            type="checkbox"
                                            <%=(productsInCart.isSelected()) ? "checked" : ""%>
                                            data-idproduct = <%=productsInCart.getProduct().getId()%>
                                            value="option1"
                                            aria-label="..."
                                    />
                                </div>
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close"></span>
                            </td>
                        </tr>

                        <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn">Delete All</a>
                    <a href="<%=UrlUtils.pathHost("ShopGridController")%>" class="primary-btn cart-btn cart-btn-right"
                    ><span class="icon_loading"></span> Continue Shopping</a
                    >
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    <div class="shoping__discount">
                        <h5>Discount Codes</h5>
                        <form action="#">
                            <input type="text" placeholder="Enter your coupon code"/>
                            <button type="submit" class="site-btn">APPLY COUPON</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>Cart Total</h5>
                    <ul>
                        <li>Subtotal <span><%=vnPrice.format(subTotal)%>đ</span></li>
<%--                        <li>Sale <span>20%</span></li>--%>
                        <li>Total <span><%=vnPrice.format(subTotal)%>đ</span></li>
                    </ul>
                    <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->

<!-- Js Plugins -->
<%@include file="script.jsp" %>
</body>
</html>
