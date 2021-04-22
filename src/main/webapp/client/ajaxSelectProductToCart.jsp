<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int subTotal = (int) request.getAttribute("subTotal");
    int saleCode = (int) request.getAttribute("saleCode");
    int total = (int) request.getAttribute("total");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<li>Subtotal <span><%=vnPrice.format(subTotal)%>đ</span></li>
<%if (saleCode != 0){%>
<li>Sale <span><%=saleCode%>%</span></li>
<%}%>
<li>Total <span><%=vnPrice.format(total)%>đ</span></li>
