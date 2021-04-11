package com.example.CoffeeShop.controller;

import com.example.CoffeeShop.dao.ProductDAO;
import com.example.CoffeeShop.dao.SizeProductDAO;
import com.example.CoffeeShop.dao.TypeProductDAO;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.SizeProduct;
import com.example.CoffeeShop.modal.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopGridController", value = "/ShopGridController")
public class ShopGridController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idType = (request.getParameter("idType") == null) ? 0 : Integer.parseInt(request.getParameter("idType"));
        int pageCurrent = (request.getParameter("page") == null) ? 1 : Integer.parseInt(request.getParameter("page"));
        List<Product> listAllProduct = ProductDAO.getAllProductWithType(0);
        List<Product> listLatest = ProductDAO.getLastestProduct() ;
        List<Product> listProductType = ProductDAO.getAllProductWithType(idType);
        List<Product> listProductPage = ProductDAO.getProductPage(idType,pageCurrent);
        int numberOfPage = ProductDAO.numberOfPage(idType);
        List<Product> listAllSaleProduct = ProductDAO.getAllSaleProduct();
        List<TypeProduct> listTypeProduct = TypeProductDAO.getAllTypeProduct();
        List<SizeProduct> listSizeProduct = SizeProductDAO.getAllSizeProduct();
        request.setAttribute("listTypeProduct",listTypeProduct);
        request.setAttribute("listLatest",listLatest);
        request.setAttribute("listAllProduct", listAllProduct);
        request.setAttribute("listProductType", listProductType);
        request.setAttribute("listProductPage", listProductPage);
        request.setAttribute("listAllSaleProduct", listAllSaleProduct);
        request.setAttribute("listSizeProduct", listSizeProduct);
        request.setAttribute("numberOfPage", numberOfPage);
        request.setAttribute("idType", idType);
        request.setAttribute("pageCurrent", pageCurrent);
        request.getRequestDispatcher("client/shopGrid.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
