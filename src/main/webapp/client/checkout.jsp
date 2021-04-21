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
    List<ProductsInCart> listProduct = (List<ProductsInCart>) request.getAttribute("listProductSelect");
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
                    <h2>Checkout</h2>
                    <div class="breadcrumb__option">
                        <a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a>
                        <span>Checkout</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>
                    <span class="icon_tag_alt"></span> Have a coupon?
                    <a href="#">Click here</a> to enter your code
                </h6>
            </div>
        </div>
        <div class="checkout__form">
            <h4>Billing Details</h4>
            <form action="<%=UrlUtils.pathHost("MessageCheckOutController")%>" method="POST" >
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="checkout__input">
                                    <p>Full Name<span>*</span></p>
                                    <input type="text" name="name" value="<%=user.getUserName()%>"/>
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>Address<span>*</span></p>
                            <input
                                    type="text"
                                    value="<%=user.getAddress()%>"
                                    name="address"
                                    placeholder="Street Address"
                                    class="checkout__input__add"
                            />
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Phone<span>*</span></p>
                                    <input type="text" name="phone" value="<%=user.getPhone()%>"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="text" name="email" value="<%=user.getEmail()%>"/>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="checkout__input__checkbox">
                          <label for="diff-acc">
                            Ship to a different address?
                            <input type="checkbox" id="diff-acc" />
                            <span class="checkmark"></span>
                          </label>
                        </div> -->
                        <div class="checkout__input">
                            <p>Order notes<span>*</span></p>
                            <input
                                    type="text"
                                    name = "note"
                                    placeholder="Notes about your order, e.g. special notes for delivery."
                            />
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h4>Your Order</h4>
                            <div class="checkout__order__products">
                                Products <span>Total</span>
                            </div>
                            <ul>
                                <%for (ProductsInCart productsInCart : listProduct) {%>
                                <li><%=productsInCart.getProduct().getProductName()%> x <%=productsInCart.getQuantity()%> <span><%=vnPrice.format(cart.totalProduct(productsInCart))%>đ</span></li>
                                <%}%>
                            </ul>
                            <div class="checkout__order__subtotal">
                                Subtotal <span><%=vnPrice.format(subTotal)%>đ</span>
                            </div>
<%--                            <%if ()%>--%>
<%--                            <div--%>
<%--                                    class="checkout__order__subtotal"--%>
<%--                                    style="border-top: none; padding-top: 0px"--%>
<%--                            >--%>
<%--                                Sale <span>1%</span>--%>
<%--                            </div>--%>
                            <div class="checkout__order__total">
                                Total <span><%=vnPrice.format(subTotal)%>đ</span>
                            </div>
                            <form action="">
                                <div class="checkout__order__products">Payment</div>
                                <div class="checkout__input__checkbox">
<%--                                    <label for="payment">--%>
                                        Cash
<%--                                        <input type="checkbox" id="payment"/>--%>
<%--                                        <span class="checkmark"></span>--%>
<%--                                    </label>--%>
                                </div>
<%--                                <div class="checkout__input__checkbox">--%>
<%--                                    <label for="paypal">--%>
<%--                                        Paypal--%>
<%--                                        <input type="checkbox" id="paypal"/>--%>
<%--                                        <span class="checkmark"></span>--%>
<%--                                    </label>--%>
<%--                                </div>--%>
                                <input
                                        type="submit"
                                        class="site-btn"
                                        value="PLACE ORDER"
                                        style="width: 100%"
                                />
                                <!-- <button type="submit" >PLACE ORDER</button> -->
                            </form>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->

<!-- Js Plugins -->
<%@include file="script.jsp" %>
</body>
</html>
