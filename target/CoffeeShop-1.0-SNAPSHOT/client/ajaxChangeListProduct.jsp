<%@ page import="com.example.CoffeeShop.modal.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.example.CoffeeShop.modal.TypeProduct" %>
<%@ page import="com.example.CoffeeShop.util.UrlUtils" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/2/2021
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Product> listProductType = (List<Product>) request.getAttribute("listProductType");
    List<Product> listProductPage = (List<Product>) request.getAttribute("listProductPage");
    List<TypeProduct> listTypeProduct = (List<TypeProduct>) request.getAttribute("listTypeProduct");
    int numberOfPage = (int) request.getAttribute("numberOfPage");
    int idType = (int) request.getAttribute("idType");
    int pageCurrent = (int) request.getAttribute("pageCurrent");
    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vnPrice = NumberFormat.getInstance(localeVN);
%>
<div class="filter__item">
    <div class="row" id="targetProduct">
        <div class="col-lg-4 col-md-5">
            <div class="filter__sort">
                <span>Sort By</span>
                <select>
                    <option value="0">Default</option>
                    <option value="0">Default</option>
                </select>
            </div>
        </div>
        <div class="col-lg-4 col-md-4">
            <div class="filter__found">
                <h6><span><%=listProductType.size()%></span> Products found</h6>
            </div>
        </div>
        <div class="col-lg-4 col-md-3">
            <div class="filter__sort"
                 style="display: flex; align-items: center; justify-content: flex-end">
                <span>Type</span>
                <select id="typeProduct">
                    <option value="0">All</option>
                    <%for (TypeProduct typeProduct : listTypeProduct) {%>
                    <option <%=(idType == typeProduct.getId()? "selected" : "")%> value="<%=typeProduct.getId()%>"><%=typeProduct.getTypeProduct()%>
                    </option>
                    <%}%>
                </select>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <%for (Product product : listProductPage) {%>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="product__item">
            <div
                    class="product__item__pic set-bg"
                    data-setbg=<%=UrlUtils.fullPathClient(product.getImage())%>
            >
                <% if (product.getSale() != 0) {%>
                <div class="sale-item">
                    <img src=<%=UrlUtils.fullPathClient("img/sale.png")%> alt=""/>
                    <p><%=product.getSale()%>%</p>
                </div>
                <%}%>
                <ul class="product__item__pic__hover">
                    <li>
                        <a href="#" data-toggle="modal" data-target="#productModal<%=product.getId()%>"
                        ><i class="fa fa-retweet"></i
                        ></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                    </li>
                </ul>
            </div>
            <div class="product__item__text">
                <h6>
                    <a href=<%=UrlUtils.pathHost("ShopDetailController?idProduct=" + product.getId())%>><%=product.getProductName()%>
                    </a>
                </h6>
                <%int priceProduct = product.getPriceProducts().get(0).getPrice();%>
                <%if (product.getSale() != 0) {%>
                <h5>
                    <%=vnPrice.format(product.getSalePrice(priceProduct))%>đ
                    <span class="old-price-product"><%=vnPrice.format(priceProduct)%>đ</span>
                </h5>
                <%} else {%>
                <h5><%=vnPrice.format(priceProduct)%>đ</h5>
                <%}%>
            </div>
        </div>
    </div>
    <%}%>
</div>
<div class="product__pagination">
    <%for (int i = 1; i <= numberOfPage; i++) {%>
    <a style="<%=(i == pageCurrent) ? "background: #6b3906; color: #ffffff" : ""%>" data-page = <%=i%> href="#"><%=i%>
    </a>
    <%}%>
    <%int nextPage = (pageCurrent + 1 > numberOfPage) ? numberOfPage : pageCurrent + 1;%>
    <a data-page = <%=nextPage%> href="#"><i class="fa fa-long-arrow-right"></i></a>
</div>
<script src= <%= UrlUtils.fullPathClient("js/main.js")%>></script>
<script src= <%= UrlUtils.fullPathClient("js/clientAjax.js")%>></script>


