package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.UserDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUpController", value = "/SignUpController")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountName = request.getParameter("name");
        String accountPassword = request.getParameter("pass");
        String user_name = request.getParameter("your_name");
        String reAccountPassword = request.getParameter("re_pass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        HttpSession session = null;
        User user = null;
        session = request.getSession();
        user = (User) session.getAttribute("user");
        String message = "";
        // kiểm tra đã có session user chưa
        if (user == null) {
            if (!UserDAO.checkAccountName(accountName)) {
                if (!UserDAO.checkEmail(email)) {
                    if (UserDAO.validateEmail(email)) {
                        if (!UserDAO.checkPhone(phone)) {
                            if (reAccountPassword.equals(accountPassword)){
                                if (UserDAO.insertUser(accountName, accountPassword, user_name, email, phone)) {
                                        user = UserDAO.getUserByAccountName(accountName);
                                        CartDAO.insertCart(user);
                                        Cart cart = CartDAO.getCartByUser(user);
                                        // tạo đối tượng session nếu chưa có session
                                        session = request.getSession(true);
                                        // set giá trị cho session
                                        session.setAttribute("user", user);
                                        session.setAttribute("cart", cart);

                                }
                            }else {
                                message = "Mật khẩu không trùng nhau";
                            }
                        } else {
                            message = "Số điện thoại đã được đăng kí";
                        }
                    } else {
                        message = "Nhập sai định dạng email";
                    }
                } else {
                    message = "Email đã được đăng kí";
                }
            } else {
                message = "Tài khoản đã được đăng kí";
            }
            if (message.length() > 0){
                request.setAttribute("message", message);
                request.getRequestDispatcher("client/signUp.jsp").forward(request, response);
            }
            else {
                response.sendRedirect("IndexController");
            }
        } else {
            response.sendRedirect("IndexController");
        }
    }
}
