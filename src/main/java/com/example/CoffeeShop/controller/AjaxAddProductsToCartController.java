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

@WebServlet(name = "AjaxAddProductsToCartController", value = "/AjaxAddProductsToCartController")
public class AjaxAddProductsToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            User user = (User) session.getAttribute("user");
            int idProduct = Integer.parseInt(request.getParameter("idProduct"));
            int idSizeProduct = Integer.parseInt(request.getParameter("idSizeProduct"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            Product product = ProductDAO.getProductById(idProduct);
            if (CartDAO.addProductToCart(cart, idProduct, quantity, idSizeProduct, product.getSale())) {
                Cart cartNew = CartDAO.getCartByUser(user);
                session.setAttribute("cart", cartNew);
                response.sendRedirect("client/ajaxAddProductsToCart.jsp");
            }
        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
