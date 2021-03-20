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
        String sql = "SELECT * from `user` WHERE id = 1";
        ResultSet rs = null;
        Connection connection = null;
        try {
//            connection = ConnectionDB.connection();
            connection = ConnectionUtils.getConnection();
//            rs = ConnectionDB.connect().executeQuery(sql);
            rs = connection.createStatement().executeQuery(sql);
            rs.last();
            int i = rs.getRow();
            if (rs != null && i == 1) {
                rs.first() ;
                String name = rs.getString(2) ;
                request.setAttribute("tenUser",name);
                request.getRequestDispatcher("client/index.jsp").forward(request,response);
                System.out.println();
            }
            else  {
                response.sendRedirect("client/shopDetail.jsp");
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
       // ProductDAO productDAO = new ProductDAO();
        ArrayList<Product> listFavoite = ProductDAO.getAllFavoriteProduct();
        ArrayList<Product> listLatest = ProductDAO.getLastestProduct() ;
        //TopRatedProduct
        ArrayList<Product> listTopRated = ProductDAO.getTopRatedProduct();
        request.setAttribute("listTopRated",listTopRated);
        request.setAttribute("listLatest",listLatest);
        request.setAttribute("listFavorite",listFavoite);
        request.getRequestDispatcher("client/index.jsp").forward(request,response);
        for (Product product : listLatest){
            System.out.println(product.toString());
        }
        for (int i = 0; i < listTopRated.size() ;i++) {
            System.out.println("Best Seller " + listTopRated.get(i));
        }
        for (Product product : listLatest){
            System.out.println(product.toString());
        }
        for (int i = 0; i < listLatest.size() ;i++) {
            System.out.println("lastest product " + listLatest.get(i));
        }
        for (Product product : listFavoite){
            System.out.println(product.toString());
        }
        for (int i = 0; i < listFavoite.size(); i++) {
            System.out.println("a--- " + listFavoite.get(i));
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
