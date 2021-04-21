package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.BillDAO;
import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Bill;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MyAccountController", value = "/MyAccountController")
public class MyAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
            List<Bill> listBill = BillDAO.getListBillByCartId(cart.getId());
            request.setAttribute("listBill",listBill);
            request.setAttribute("listTypeProduct",listTypeProduct);
            request.getRequestDispatcher("client/myAccount.jsp").forward(request,response);
        }
        else {
            response.sendRedirect("client/signIn.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
