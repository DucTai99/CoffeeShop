package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopingCartController", value = "/ShopingCartController")
public class ShopingCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
            int subTotal = cart.subTotalPrice();
            request.setAttribute("subTotal", subTotal);
            request.setAttribute("listTypeProduct", listTypeProduct);
            request.getRequestDispatcher("client/shopingCart.jsp").forward(request, response);
        } else {
            response.sendRedirect("client/signIn.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
