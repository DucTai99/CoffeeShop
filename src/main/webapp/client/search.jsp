<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/20/2021
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="hero__search__form">
    <form id="search-form" action="#">
        <div class="hero__search__categories">All Categories</div>
        <input id="search-input" type="text" autocomplete="off" placeholder="What do you need?"/>
        <button style="cursor: none" type="submit" class="site-btn">SEARCH</button>
    </form>
    <div class="search-result">

    </div>
</div>
<script src= <%= UrlUtils.fullPathClient("js/clientAjax.js")%>></script>
