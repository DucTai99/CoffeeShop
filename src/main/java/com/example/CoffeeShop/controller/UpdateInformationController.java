package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.*;
import com.example.CoffeeShop.modal.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UpdateInformationController", value = "/UpdateInformationController")
public class UpdateInformationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");
        if (user != null) {
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String message = "";
            List<Bill> listBill = BillDAO.getListBillByCartId(cart.getId());
            List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
            if (!UserDAO.checkEmail(email) || email.equals(user.getEmail())) {
                if (UserDAO.validateEmail(email)) {
                    if (!UserDAO.checkPhone(phone) || phone.equals(user.getPhone())) {
                        UserDAO.updateUserById(user.getId(), name, email, phone, address);
                        User userNew = UserDAO.getUserById(user.getId());
                        session.setAttribute("user",userNew);
                    } else {
                        message = "Số điện thoại đã được đăng kí";
                    }
                } else {
                    message = "Nhập sai định dạng email";
                }
            } else {
                message = "Email đã được đăng kí";
            }
            if (message.length() == 0) {
                request.setAttribute("listBill",listBill);
                request.setAttribute("listTypeProduct",listTypeProduct);
                request.getRequestDispatcher("client/myAccount.jsp").forward(request,response);
            } else {
                request.setAttribute("listBill",listBill);
                request.setAttribute("listTypeProduct",listTypeProduct);
                request.setAttribute("message", message);
                request.getRequestDispatcher("client/myAccount.jsp").forward(request,response);
            }
        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }
}
