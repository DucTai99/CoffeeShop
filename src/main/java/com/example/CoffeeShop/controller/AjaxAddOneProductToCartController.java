package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AjaxAddOneProductToCartController", value = "/AjaxAddOneProductToCartController")
public class AjaxAddOneProductToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        Product product = ProductDAO.getProductById(idProduct);
        if (CartDAO.addProductToCart(cart, idProduct, 1, 1, product.getSale())) {
            Cart cartNew = CartDAO.getCartByUser(user);
            session.setAttribute("cart", cartNew);
            response.sendRedirect("client/ajaxAddOneProductToCart.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}