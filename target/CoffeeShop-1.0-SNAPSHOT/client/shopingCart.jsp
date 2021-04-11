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
                        <tr>
                            <td class="shoping__cart__item">
                                <img src=<%=UrlUtils.fullPathClient("img/cart/cart-1.jpg")%> alt=""/>
                                <h5>Vegetable’s Package</h5>
                            </td>
                            <td class="shoping__cart__price">
                                <span class="old-price-cart">75.000đ</span>
                                <span>55.000đ</span>
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1"/>
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total">$110.00</td>
                            <td>
                                <div class="form-check">
                                    <input
                                            class="form-check-input position-static"
                                            id="blankCheckbox"
                                            type="checkbox"
                                            value="option1"
                                            checked
                                            aria-label="..."
                                    />
                                </div>
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="img/cart/cart-1.jpg" alt=""/>
                                <h5>Vegetable’s Package</h5>
                            </td>
                            <td class="shoping__cart__price">
                                <span class="old-price-cart">75.000đ</span>
                                <span>55.000đ</span>
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1"/>
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total">$110.00</td>
                            <td>
                                <div class="form-check">
                                    <input
                                            class="form-check-input position-static"
                                            id="blankCheckbox"
                                            type="checkbox"
                                            value="option1"
                                            checked
                                            aria-label="..."
                                    />
                                </div>
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="img/cart/cart-1.jpg" alt=""/>
                                <h5>Vegetable’s Package</h5>
                            </td>
                            <td class="shoping__cart__price">
                                <span class="old-price-cart">75.000đ</span>
                                <span>55.000đ</span>
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1"/>
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total">$110.00</td>
                            <td>
                                <div class="form-check">
                                    <input
                                            class="form-check-input position-static"
                                            id="blankCheckbox"
                                            type="checkbox"
                                            value="option1"
                                            checked
                                            aria-label="..."
                                    />
                                </div>
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close"></span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn">Delete All</a>
                    <a href="#" class="primary-btn cart-btn cart-btn-right"
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
                        <li>Subtotal <span>454.000đ</span></li>
                        <li>Sale <span>20%</span></li>
                        <li>Total <span>394.000đ</span></li>
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
