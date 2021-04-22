<%@ page import="com.example.CoffeeShop.util.UrlUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign In</title>

    <!-- Font Icon -->
    <link
            href="https://fonts.googleapis.com/css2?family=Material+Icons"
            rel="stylesheet"
    />
    <link
            href=<%=UrlUtils.fullPathClient("fonts/material-icon/css/material-design-iconic-font.min.css")%>
                    rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap"
            rel="stylesheet"
    />

    <!-- Main css -->
    <link href=<%=UrlUtils.fullPathClient("css/login.css")%> rel="stylesheet"/>
</head>
<body>
<div class="main">
    <!-- Sing in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="close-form">
                    <a href="<%=UrlUtils.pathHost("IndexController")%>">
                        <span class="material-icons"> close </span>
                    </a>
                </div>
                <div class="signin-image">
                    <figure>
                        <img src=<%=UrlUtils.fullPathClient("img/signin.jpg")%> alt="sing-up-image"/>
                    </figure>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Thanh toán thành công.</h2>
                    <div class="form-group form-button">
                        <a style="text-decoration: none" class="form-submit" href="<%=UrlUtils.pathHost("IndexController")%>">Quay về</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- JS -->
<script
        src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"
></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
