package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.modal.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShopDetailController", value = "/ShopDetailController")
public class ShopDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idProduct"));
        Product product = ProductDAO.getProductById(id);
        request.setAttribute("product",product);
        request.getRequestDispatcher("client/shopDetails.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
