<%@ page import="com.example.CoffeeShop.modal.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.CoffeeShop.util.UrlUtils" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/20/2021
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<%for (Product product : listProduct) {%>
<div class="item-search">
    <div class="img-in-search">
        <img src="<%=UrlUtils.fullPathClient(product.getImage())%>" alt=""/>
    </div>
    <div class="info-in-search">
        <a href="<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + product.getId())%>"><%=product.getProductName()%></a>
        <%
            int priceProduct = product.getPriceProducts().get(0).getPrice();
        %>
        <%if (product.getSale() != 0) {%>
        <p>
            <span><%=vnPrice.format(product.getSalePrice(priceProduct))%>đ</span>
            <span class="old-price"><%=vnPrice.format(priceProduct)%>đ</span>
        </p>
        <%} else {%>
        <p>
            <span><%=vnPrice.format(priceProduct)%>đ</span>
        </p>
        <%}%>
    </div>
</div>
<%}%>

