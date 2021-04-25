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

@WebServlet(name = "AjaxSelectProductToCartController", value = "/AjaxSelectProductToCartController")
public class AjaxSelectProductToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            int idProduct = Integer.parseInt(request.getParameter("idProduct"));
            int subTotal = cart.subTotalPriceWithIdProduct(idProduct);
            int saleCode = (cart.getSaleCode() == null) ? 0 : cart.getSaleCode().getSale();
            int total = cart.totalWithSaleCode();
            request.setAttribute("subTotal", subTotal);
            request.setAttribute("saleCode", saleCode);
            request.setAttribute("total", total);
            session.setAttribute("cart", cart);
            request.getRequestDispatcher("client/ajaxSelectProductToCart.jsp").forward(request, response);
        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
