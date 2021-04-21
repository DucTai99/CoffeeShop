<%@ page import="com.example.CoffeeShop.util.UrlUtils" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.CoffeeShop.modal.*" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2/28/2021
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<TypeProduct> listTypeProduct = (List<TypeProduct>) request.getAttribute("listTypeProduct");
    User user = (User) session.getAttribute("user");
    Cart cart = (Cart) session.getAttribute("cart");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="<%=UrlUtils.pathHost("IndexController")%>"><img
                src=<%=UrlUtils.fullPathClient("img/Logo-Coffee.png")%> alt=""/></a>
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
            <img src=<%=UrlUtils.fullPathClient("img/language.png")%> alt=""/>
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a class="vi-VN" href="#">Việt Nam</a></li>
                <li><a class="en-UK" href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="<%=UrlUtils.fullPathClient("signIn.jsp")%>"><i
                    class="fa fa-user"></i> <%=(user == null) ? "Login" : user.getAccountName()%>
            </a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a></li>
            <li>
                <a href="<%=UrlUtils.pathHost("ShopGridController")%>">Products</a>
                <ul class="header__menu__dropdown">
                    <%for (TypeProduct typeProduct : listTypeProduct) {%>
                    <li>
                        <a href="<%=UrlUtils.pathHost("ShopGridController?idType=" + typeProduct.getId())+"#targetProduct"%>"><%=typeProduct.getTypeProduct()%>
                        </a></li>
                    <%}%>
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
                            <img src=<%=UrlUtils.fullPathClient("img/language.png")%> alt=""/>
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a class="vi-VN" href="#">Việt Nam</a></li>
                                <li><a class="en-UK" href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth" style="display: inline-flex">
                            <%if (user == null){%>
                            <a href="<%=UrlUtils.fullPathClient("signIn.jsp")%>">
                                <i class="fa fa-user"></i> Login
                            </a>
                            <%}else {%>
                            <a href="<%=UrlUtils.pathHost("MyAccountController")%>" style="display: inline-block; margin-right: 5px">
                                <i class="fa fa-user"></i> <%=user.getUserName()%>
                            </a>
                            <a href="<%=UrlUtils.pathHost("LogOutController")%>" style="font-size: 20px" class="material-icons">
                                logout
                            </a>
                            <%}%>
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
                    <a href="<%=UrlUtils.pathHost("IndexController")%>"
                    ><img src=<%=UrlUtils.fullPathClient("img/Logo-Coffee.png")%> alt=""
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
                            <a href="<%=UrlUtils.pathHost("IndexController")%>" langkey="nav_home">Home</a>
                        </li>
                        <li>
                            <a href="<%=UrlUtils.pathHost("ShopGridController")%>" langkey="nav_shop">Products</a>
                            <ul class="header__menu__dropdown">
                                <%for (TypeProduct typeProduct : listTypeProduct) {%>
                                <li>
                                    <a href="<%=UrlUtils.pathHost("ShopGridController?idType=" + typeProduct.getId())+"#targetProduct"%>"><%=typeProduct.getTypeProduct()%>
                                    </a></li>
                                <%}%>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Member Card</a></li>
                        <li>
                            <a href="./contact.jsp" langkey="nav_contact">Contact</a>
                        </li>
                    </ul>
                </nav>
                <input type="hidden" id="langCode" value="en"/>
            </div>
            <div class="col-lg-2">
                <div class="header__cart">
                    <ul>
                        <li class="coffee-cart">
                            <a href="<%=UrlUtils.pathHost("ShopingCartController")%>">
                                <p>Cart</p>
                                <div class="coffee-cart-content">
                                    <i class="fa fa-shopping-cart"></i>
                                    <%if (cart != null) {%>
                                    <%if (cart.getAllQuantity() > 0) {%>
                                    <span><%=cart.getAllQuantity()%></span>
                                    <%}%>
                                    <%}%>
                                </div>
                            </a>
                            <%if (cart != null) {%>
                            <%if (cart.getAllQuantity() > 0) {%>
                            <div class="hidden-info-cart animate__animated animate__fadeInUp">
                                <div class="content-item-cart-nav">
                                    <%for (ProductsInCart productsInCart : cart.getListProductsInCart()) {%>
                                    <div class="item-in-cart-nav">
                                        <div class="img-in-cart-nav">
                                            <img src=<%=UrlUtils.fullPathClient(productsInCart.getProduct().getImage())%> alt=""/>
                                        </div>
                                        <div class="info-in-cart-nav">
                                            <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + productsInCart.getProduct().getId())%>"><%=productsInCart.getProduct().getProductName()%>
                                            </a>
                                            <p>
                                                <%
                                                    int price = cart.getPriceProductSize(productsInCart);
                                                %>
                                                <%if (productsInCart.getSale() != 0) {%>
                                                <span><%=productsInCart.getQuantity()%></span> x
                                                <span><%=vnPrice.format(productsInCart.getProduct().getSalePrice(price))%>đ</span>
                                                <span class="old-price"><%=vnPrice.format(price)%>đ</span>
                                                <%} else {%>
                                                <span><%=productsInCart.getQuantity()%></span> x
                                                <span><%=vnPrice.format(price)%>đ</span>
                                                <%}%>
                                            </p>
                                        </div>
                                        <a href="#" data-idproduct="<%=productsInCart.getProduct().getId()%>" class="material-icons delete-product-nav">delete_forever</a>
                                    </div>
                                    <%}%>
                                </div>
                                <div style="margin: 10px 0px;display: flex;justify-content: space-between;">
                                    <h4 style="color: red">Tổng :</h4>
                                    <h4 style="color: red"><%=vnPrice.format(cart.totalAllProduct())%>đ</h4>
                                </div>
                                <a class="check-out-cart-nav" href="<%=UrlUtils.pathHost("ShopingCartController")%>">Thanh toán</a>
                            </div>
                            <%}%>
                            <%}%>
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
