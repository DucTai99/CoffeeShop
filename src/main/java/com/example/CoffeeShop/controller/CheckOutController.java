package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.ProductsInCart;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CheckOutController", value = "/CheckOutController")
public class CheckOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        List<ProductsInCart> listProductSelect = new ArrayList<ProductsInCart>();
        for(ProductsInCart productsInCart : cart.getListProductsInCart()){
            if (productsInCart.isSelected()){
                listProductSelect.add(productsInCart);
            }
        }
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        int subTotal = cart.subTotalPrice();
        request.setAttribute("subTotal", subTotal);
        request.setAttribute("listTypeProduct", listTypeProduct);
        request.setAttribute("listProductSelect", listProductSelect);
        request.getRequestDispatcher("client/checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
