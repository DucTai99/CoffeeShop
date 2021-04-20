<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.example.CoffeeShop.modal.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int subTotal = (int) request.getAttribute("subTotal");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<li>Subtotal <span><%=vnPrice.format(subTotal)%>đ</span></li>
<%--                        <li>Sale <span>20%</span></li>--%>
<li>Total <span><%=vnPrice.format(subTotal)%>đ</span></li>
