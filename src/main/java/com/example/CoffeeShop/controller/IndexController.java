package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.database.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "IndexController", value = "/IndexController")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "SELECT * from `user` WHERE id = 1";
        ResultSet rs = null;
        try {
            rs = ConnectionDB.connect().executeQuery(sql);
            rs.last();
            int i = rs.getRow();
            if (rs != null && i == 1) {
                rs.first() ;
                String name = rs.getString(2) ;
                request.setAttribute("tenUser",name);
                request.getRequestDispatcher("client/index.jsp").forward(request,response);

            }
            else  {
                response.sendRedirect("client/shopDetail.jsp");
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
