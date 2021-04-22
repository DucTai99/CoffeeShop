package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContactController", value = "/ContactController")
public class ContactController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        request.setAttribute("listTypeProduct", listTypeProduct);
        request.getRequestDispatcher("client/contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
