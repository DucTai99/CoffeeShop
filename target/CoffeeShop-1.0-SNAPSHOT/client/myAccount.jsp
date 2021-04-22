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
<%
    List<Bill> listBill = (List<Bill>) request.getAttribute("listBill");
%>
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
                    <h2>My Account</h2>
                    <div class="breadcrumb__option">
                        <a href="<%=UrlUtils.pathHost("IndexController")%>">Home</a>
                        <span>My Account</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- My Account Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="checkout__form">
            <h4>My Information</h4>
            <%if (request.getAttribute("message") != null){%>
            <h5 style="color: red;text-align: center"><%=request.getAttribute("message")%></h5>
            <%}%>
            <form action="<%=UrlUtils.pathHost("UpdateInformationController")%>" method="POST">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
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
                                    <input type="text"
                                           name="phone"
                                           value="<%=user.getPhone()%>"

                                    />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="text" name="email" value="<%=user.getEmail()%>"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input
                        type="submit"
                        class="site-btn"
                        value="UPDATE INFORMATION"
                        style="width: 100%; margin-bottom: 20px"
                />
            </form>
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="checkout__order">
                        <h4>My Bill</h4>

                        <%for (Bill bill : listBill) {%>
                        <div
                                style="
                    border-radius: 10px;
                    border: 1px solid #e1e1e1;
                    margin-bottom: 20px;
                    padding: 10px;
                  "
                        >
                            <div class="checkout__order__products">Bill - <%=bill.getCreateDate()%></div>
                            <ul>
                                <%for (ProductInBill productInBill : bill.getListproductInBill()) {%>
                                <li><%=productInBill.getProduct().getProductName()%> x <%=productInBill.getQuantity()%> <span><%=vnPrice.format(bill.totalProduct(productInBill))%>đ</span></li>
                                <%}%>
                                <li class="checkout__order__total">
                                    <%if(bill.getSalePercent() > 0){%>
                                    Sale <span><%=bill.getSalePercent()%>%</span>
                                    <%}%>
                                </li>
                                <li class="checkout__order__total">
                                    Total <span><%=vnPrice.format(bill.getTotal())%>đ</span>
                                </li>
                            </ul>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- My Account Section End -->

<!-- Footer Section Begin -->
<%@include file="footer.jsp" %>
<!-- Footer Section End -->
<!-- Js Plugins -->
<%@include file="script.jsp" %>
</body>
</html>
