package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.dao.UserDAO;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.Console;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "IndexController", value = "/IndexController")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listFavorite = ProductDAO.getAllFavoriteProduct();
        List<Product> listLatest = ProductDAO.getLastestProduct() ;
//        //TopRatedProduct
        List<Product> listTopRated = ProductDAO.getTopRatedProduct();
        List<Product> listReview = ProductDAO.getReviewProduct();
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        //---------------------------------------------
//        List<Product> listFind = (List<Product>) ProductDAO.findProduct();
//        request.setAttribute("listFind", listFind);
        //---------------------------------------------
        request.setAttribute("listLatest",listLatest);
        request.setAttribute("listFavorite",listFavorite);
        request.setAttribute("listTopRated",listTopRated);
        request.setAttribute("listReview",listReview);
        request.setAttribute("listTypeProduct",listTypeProduct);
        request.getRequestDispatcher("client/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
