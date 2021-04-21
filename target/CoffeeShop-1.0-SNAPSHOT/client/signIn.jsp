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
                    <a href="<%=UrlUtils.fullPathClient("signUp.jsp")%>" class="signup-image-link">Create an account</a>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign up</h2>
                    <h4 class="form-title" style="color: red">
                        <%=(request.getAttribute("message") == null) ? "" : request.getAttribute("message")%>
                    </h4>
                    <form action="<%=UrlUtils.pathHost("SignInController")%>" method="POST" class="register-form"
                          id="login-form">
                        <div class="form-group">
                            <label for="your_name"
                            ><i class="zmdi zmdi-account material-icons-name"></i
                            ></label>
                            <input
                                    type="text"
                                    name="your_name"
                                    id="your_name"
                                    placeholder="Your Account Name"
                            />
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input
                                    type="password"
                                    name="your_pass"
                                    id="your_pass"
                                    placeholder="Password"
                            />
                        </div>
                        <%--                        <div class="form-group">--%>
                        <%--                            <input--%>
                        <%--                                    type="checkbox"--%>
                        <%--                                    name="remember-me"--%>
                        <%--                                    id="remember-me"--%>
                        <%--                                    class="agree-term"--%>
                        <%--                            />--%>
                        <%--                            <label for="remember-me" class="label-agree-term"--%>
                        <%--                            ><span><span></span></span>Remember me</label--%>
                        <%--                            >--%>
                        <%--                        </div>--%>
                        <div class="form-group form-button">
                            <input
                                    type="submit"
                                    name="signin"
                                    id="signin"
                                    class="form-submit"
                                    value="Log in"
                            />
                        </div>
                    </form>
                    <div class="social-login">
                        <span class="social-label">Or login with</span>
                        <ul class="socials">
                            <li>
                                <a href="#"
                                ><i class="display-flex-center zmdi zmdi-facebook"></i
                                ></a>
                            </li>
                            <li>
                                <a href="#"
                                ><i class="display-flex-center zmdi zmdi-twitter"></i
                                ></a>
                            </li>
                            <li>
                                <a href="#"
                                ><i class="display-flex-center zmdi zmdi-google"></i
                                ></a>
                            </li>
                        </ul>
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
