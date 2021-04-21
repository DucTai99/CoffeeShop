package com.example.CoffeeShop.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MessageCheckOutController", value = "/MessageCheckOutController")
public class MessageCheckOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = (String) request.getAttribute("name");
        String address = (String) request.getAttribute("address");
        String phone = (String) request.getAttribute("phone");
        String email = (String) request.getAttribute("email");
        String note = (String) request.getAttribute("note");

        response.sendRedirect("client/messageCheckOut.jsp");
    }
}
