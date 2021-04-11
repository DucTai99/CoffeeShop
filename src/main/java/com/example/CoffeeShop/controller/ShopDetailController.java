package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopDetailController", value = "/ShopDetailController")
public class ShopDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idProduct"));
        Product product = ProductDAO.getProductById(id);
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        List<Product> listRelated = ProductDAO.getListRelatedProduct(product.getTypeProduct().getId());
        request.setAttribute("listTypeProduct",listTypeProduct);
        request.setAttribute("product",product);
        request.setAttribute("listRelated",listRelated);
        request.getRequestDispatcher("client/shopDetails.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
