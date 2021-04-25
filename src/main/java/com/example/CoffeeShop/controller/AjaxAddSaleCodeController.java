package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.dao.SaleCodeDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.SaleCode;
import com.example.CoffeeShop.modal.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AjaxAddSaleCodeController", value = "/AjaxAddSaleCodeController")
public class AjaxAddSaleCodeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            String nameSale = request.getParameter("nameSale");
            cart.setSaleCode(SaleCodeDAO.saleByNameSale(nameSale));
            int subTotal = cart.subTotalPrice();
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

    }
}
