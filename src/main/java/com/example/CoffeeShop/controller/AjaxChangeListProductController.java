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

@WebServlet(name = "AjaxChangeListProductController", value = "/AjaxChangeListProductController")
public class AjaxChangeListProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idType = (request.getParameter("idType") == null) ? 0 : Integer.parseInt(request.getParameter("idType"));
        int pageCurrent = (request.getParameter("page") == null) ? 1 : Integer.parseInt(request.getParameter("page"));
        List<Product> listProductType = ProductDAO.getAllProductWithType(idType);
        List<Product> listProductPage = ProductDAO.getProductPage(idType,pageCurrent);
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        int numberOfPage = ProductDAO.numberOfPage(idType);
        request.setAttribute("listTypeProduct",listTypeProduct);
        request.setAttribute("listProductType", listProductType);
        request.setAttribute("listProductPage", listProductPage);
        request.setAttribute("numberOfPage", numberOfPage);
        request.setAttribute("idType", idType);
        request.setAttribute("pageCurrent", pageCurrent);
        request.getRequestDispatcher("client/ajaxChangeListProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
