<%@ page import="com.example.CoffeeShop.modal.Cart" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.example.CoffeeShop.modal.ProductsInCart" %>
<%@ page import="com.example.CoffeeShop.util.UrlUtils" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/20/2021
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cart cart = (Cart) session.getAttribute("cart");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
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
<script>
    $('.delete-product-nav').on('click', function (event) {
        event.preventDefault();
        var idProduct = $(this).data('idproduct');
        var change = $('.header__cart ul');
        $.ajax({
            type: "GET",
            url: "/CoffeeShop/AjaxRemoveProductFromCartNavController",
            data: {
                "idProduct": idProduct
            },
            success: function (response) {
                change.html('');
                change.html(response);
            }
        });
    })
</script>
