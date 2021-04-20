package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.modal.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AjaxAddProductToCartController", value = "/AjaxAddProductToCartController")
public class AjaxSelectProductToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        int subTotal = cart.subTotalPriceWithIdProduct(idProduct);
        request.setAttribute("subTotal",subTotal);
        request.getRequestDispatcher("client/ajaxSelectProductToCart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
