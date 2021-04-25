package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.dao.ProductsInCartDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AjaxRemoveProductFromCartNavController", value = "/AjaxRemoveProductFromCartNavController")
public class AjaxRemoveProductFromCartNavController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            User user = (User) session.getAttribute("user");
            int idProduct = Integer.parseInt(request.getParameter("idProduct"));
            if (ProductsInCartDAO.removeProductsInCart(cart.getId(), idProduct)) {
                Cart cartNew = CartDAO.getCartByUser(user);
                session.setAttribute("cart", cartNew);
                response.sendRedirect("client/ajaxRemoveProductFromCartNav.jsp");
            }
        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
