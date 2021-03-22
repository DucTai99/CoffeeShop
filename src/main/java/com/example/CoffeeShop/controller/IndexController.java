package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.util.ConnectionUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "IndexController", value = "/IndexController")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> listFavorite = ProductDAO.getAllFavoriteProduct();
        ArrayList<Product> listLatest = ProductDAO.getLastestProduct() ;
//        //TopRatedProduct
//        ArrayList<Product> listTopRated = ProductDAO.getTopRatedProduct();
//        request.setAttribute("listTopRated",listTopRated);
        request.setAttribute("listLatest",listLatest);
        request.setAttribute("listFavorite",listFavorite);
        request.getRequestDispatcher("client/index.jsp").forward(request,response);
//        for (Product product : listLatest){
//            System.out.println(product.toString());
//        }
//        for (int i = 0; i < listTopRated.size() ;i++) {
//            System.out.println("Best Seller " + listTopRated.get(i));
//        }
//        for (Product product : listLatest){
//            System.out.println(product.toString());
//        }
//        for (int i = 0; i < listLatest.size() ;i++) {
//            System.out.println("lastest product " + listLatest.get(i));
//        }
//        for (Product product : listFavorite){
//            System.out.println(product.toString());
//        }
//        for (int i = 0; i < listFavorite.size(); i++) {
//            System.out.println("a--- " + listFavorite.get(i));
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
