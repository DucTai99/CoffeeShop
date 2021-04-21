<%@ page import="com.example.CoffeeShop.util.UrlUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign Up</title>

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
    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="close-form">
                    <a href="<%=UrlUtils.pathHost("IndexController")%>">
                        <span class="material-icons"> close </span>
                    </a>
                </div>
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                    <h4 class="form-title" style="color: red">
                        <%=(request.getAttribute("message") == null) ? "" : request.getAttribute("message")%>
                    </h4>
                    <form action="<%=UrlUtils.pathHost("SignUpController")%>" method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="name"
                            ><i class="zmdi zmdi-account material-icons-name"></i
                            ></label>
                            <input
                                    type="text"
                                    name="name"
                                    id="name"
                                    placeholder="Your Account Name"
                                    required
                            />
                        </div>
                        <div class="form-group">
                            <label><i class="zmdi zmdi-account material-icons-name"></i
                            ></label>
                            <input
                                    type="text"
                                    name="your_name"
                                    placeholder="Your Name"
                                    required
                            />
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input
                                    type="email"
                                    name="email"
                                    id="email"
                                    placeholder="Your Email"
                                    required
                            />
                        </div>
                        <div class="form-group">
                            <label for="phone"
                            ><i class="material-icons" style="font-size: 15px"
                            >call</i
                            ></label
                            >
                            <input
                                    type="number"
                                    name="phone"
                                    id="phone"
                                    placeholder="Your Phone"
                                    required
                            />
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input
                                    type="password"
                                    name="pass"
                                    id="pass"
                                    placeholder="Password"
                                    required
                            />
                        </div>
                        <div class="form-group">
                            <label for="re-pass"
                            ><i class="zmdi zmdi-lock-outline"></i
                            ></label>
                            <input
                                    type="password"
                                    name="re_pass"
                                    id="re_pass"
                                    placeholder="Repeat your password"
                                    required
                            />
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <input--%>
<%--                                    type="checkbox"--%>
<%--                                    name="agree-term"--%>
<%--                                    id="agree-term"--%>
<%--                                    class="agree-term"--%>
<%--                            />--%>
<%--                            <label for="agree-term" class="label-agree-term"--%>
<%--                            ><span><span></span></span>I agree all statements in--%>
<%--                                <a href="#" class="term-service">Terms of service</a></label--%>
<%--                            >--%>
<%--                        </div>--%>
                        <div class="form-group form-button">
                            <input
                                    type="submit"
                                    name="signup"
                                    id="signup"
                                    class="form-submit"
                                    value="Register"
                            />
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src=<%=UrlUtils.fullPathClient("img/signup.jpg")%> alt="sing-up-image"/>
                    </figure>
                    <a href="<%=UrlUtils.fullPathClient("signIn.jsp")%>" class="signup-image-link">I am already member</a>
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
