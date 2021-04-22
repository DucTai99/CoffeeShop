package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.CartDAO;
import com.example.CoffeeShop.dao.ProductsInCartDAO;
import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.modal.User;

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
        User user = (User) session.getAttribute("user");
        if (cart != null) {
            if (request.getParameter("deleteAll") != null) {
                ProductsInCartDAO.removeAllProductsInCart(cart.getId());
                Cart cartNew = CartDAO.getCartByUser(user);
                List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
                int subTotal = cartNew.subTotalPrice();
                int saleCode = (cart.getSaleCode() == null) ? 0 : cart.getSaleCode().getSale();
                int total = cart.totalWithSaleCode();
                request.setAttribute("subTotal", subTotal);
                request.setAttribute("saleCode", saleCode);
                request.setAttribute("total", total);
                session.setAttribute("cart", cartNew);
                request.setAttribute("listTypeProduct", listTypeProduct);
                request.getRequestDispatcher("client/shopingCart.jsp").forward(request, response);
            } else {
                List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
                int subTotal = cart.subTotalPrice();
                int saleCode = (cart.getSaleCode() == null) ? 0 : cart.getSaleCode().getSale();
                int total = cart.totalWithSaleCode();
                request.setAttribute("subTotal", subTotal);
                request.setAttribute("saleCode", saleCode);
                request.setAttribute("total", total);
                request.setAttribute("listTypeProduct", listTypeProduct);
                request.getRequestDispatcher("client/shopingCart.jsp").forward(request, response);
            }

        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        if (cart != null) {
            int idProduct = Integer.parseInt(request.getParameter("idProduct"));
            int idSizeProduct = Integer.parseInt(request.getParameter("idSizeProduct"));
            if (request.getParameter("quantity") != null) {
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                CartDAO.updateQuantity(cart, idProduct, quantity, idSizeProduct);
                Cart cartNew = CartDAO.getCartByUser(user);
                List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
                int subTotal = cartNew.subTotalPrice();
                int saleCode = (cartNew.getSaleCode() == null) ? 0 : cartNew.getSaleCode().getSale();
                int total = cartNew.totalWithSaleCode();
                request.setAttribute("subTotal", subTotal);
                request.setAttribute("saleCode", saleCode);
                request.setAttribute("total", total);
                session.setAttribute("cart", cartNew);
                request.setAttribute("listTypeProduct", listTypeProduct);
                request.getRequestDispatcher("client/shopingCart.jsp").forward(request, response);
            } else {
                if (ProductsInCartDAO.removeProductsInCart(cart.getId(), idProduct)) {
                    Cart cartNew = CartDAO.getCartByUser(user);
                    List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
                    int subTotal = cartNew.subTotalPrice();
                    int saleCode = (cartNew.getSaleCode() == null) ? 0 : cartNew.getSaleCode().getSale();
                    int total = cartNew.totalWithSaleCode();
                    request.setAttribute("subTotal", subTotal);
                    request.setAttribute("saleCode", saleCode);
                    request.setAttribute("total", total);
                    session.setAttribute("cart", cartNew);
                    request.setAttribute("listTypeProduct", listTypeProduct);
                    request.getRequestDispatcher("client/shopingCart.jsp").forward(request, response);
                }
            }

        } else {
            response.sendRedirect("client/signIn.jsp");
        }
    }
}
