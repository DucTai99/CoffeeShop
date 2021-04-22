package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.*;
import com.example.CoffeeShop.modal.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MessageCheckOutController", value = "/MessageCheckOutController")
public class MessageCheckOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        if (user != null) {
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String note = (request.getParameter("note") != null) ? request.getParameter("note") : "";
            int subTotal = Integer.parseInt(request.getParameter("subtotal"));
            int saleCode = (cart.getSaleCode() == null) ? 0 : cart.getSaleCode().getSale();
            int idSale = (request.getParameter("sale") != null) ? Integer.parseInt( request.getParameter("sale")) : 3;
            int total = Integer.parseInt(request.getParameter("total"));
            List<ProductsInCart> listProductSelect = new ArrayList<ProductsInCart>();
            for (ProductsInCart productsInCart : cart.getListProductsInCart()) {
                if (productsInCart.isSelected()) {
                    listProductSelect.add(productsInCart);
                }
            }
            String message = "";
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
                BillDAO.insertBill(total,cart.getId(),idSale,note);
                int idBill = BillDAO.getIdBillLastest(cart.getId());
                for (ProductsInCart products : listProductSelect){
                    ProductInBillDAO.insertProductsInCart(idBill,products.getProduct().getId(), products.getIdSizeProduct(),products.getSale(),products.getQuantity());
                }
                for (ProductsInCart products : listProductSelect){
                    ProductsInCartDAO.removeProductsInCart(cart.getId(),products.getProduct().getId());
                }
                Cart cartNew = CartDAO.getCartByUser(user);
                session.setAttribute("cart", cartNew);
                response.sendRedirect("client/messageCheckOut.jsp");
            } else {
                List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
                request.setAttribute("subTotal", subTotal);
                request.setAttribute("saleCode", saleCode);
                request.setAttribute("idSale", idSale);
                request.setAttribute("total", total);
                request.setAttribute("listTypeProduct", listTypeProduct);
                request.setAttribute("listProductSelect", listProductSelect);
                request.setAttribute("message", message);
                request.getRequestDispatcher("client/checkout.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }
}