package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.modal.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AjaxSearchProductController", value = "/AjaxSearchProductController")
public class AjaxSearchProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        List<Product> listProduct = ProductDAO.findProduct(productName);
        request.setAttribute("listProduct",listProduct);
        request.getRequestDispatcher("client/ajaxSearchProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
