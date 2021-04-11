package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.dao.UserDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.ProductsInCart;
import com.example.CoffeeShop.modal.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SignInController", value = "/SignInController")
public class SignInController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountName = request.getParameter("your_name");
        String accountPassword = request.getParameter("your_pass");
        HttpSession session = null;
        User user = null;
        session = request.getSession();
        user = (User) session.getAttribute("user");
        // kiểm tra đã có session user chưa
        if (user == null){
            if (UserDAO.userIsExist(accountName,accountPassword)){
                user = UserDAO.getUserByAccountName(accountName);
                Cart cart = CartDAO.getCartByUser(user);
                // tạo đối tượng session nếu chưa có session
                session = request.getSession(true);
                // set giá trị cho session
                session.setAttribute("user", user);
                session.setAttribute("cart",cart);
                response.sendRedirect("IndexController");
            }
            else {
                request.setAttribute("message","Sai tài khoản hoặc sai mật khẩu");
                request.getRequestDispatcher("client/signIn.jsp").forward(request,response);
            }
        }
        else {
            response.sendRedirect("IndexController");
        }
    }
}
