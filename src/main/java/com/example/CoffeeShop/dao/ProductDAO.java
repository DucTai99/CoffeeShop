package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {

    public ArrayList<Product> getAllProduct() {
        String sql = "SELECT * \n" +
                "FROM `product` AS p INNER JOIN typeproduct AS tp ON p.type = tp.id ";
        ArrayList<Product> listProduct = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            listProduct = new ArrayList<Product>();
            // lay tat ca product getAll
            preparedStatement = connection.prepareStatement(sql);
            // lay dl ra tu bang
            resultSet = preparedStatement.executeQuery();
            // lay du lieu va them vao doi tuong product

            while (resultSet.next()) {
                // tao doi tuong Product
                Product product = new Product();
                // tao doi tuong TypeProduct
                TypeProduct typeProduct = new TypeProduct();
                // set Id cua TypeProduct la cot thu 9 trong bang sql
                typeProduct.setId(resultSet.getInt(9));
                // set TypeProduct la cot thu 10 trong bang sql
                typeProduct.setTypeProduct(resultSet.getString(10));
                product.setId(resultSet.getInt(1));
                product.setProductName(resultSet.getString(2));
                product.setTypeProduct(typeProduct);
                product.setSale(resultSet.getInt(4));
                product.setImage(resultSet.getString(5));
                product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
                product.setActived((resultSet.getInt(7) == 1) ? true : false);
                product.setCreateDate(resultSet.getDate(8));
                listProduct.add(product);
            }
            return listProduct;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    public ArrayList<Product> getAllFavoriteProduct(){
        String sql = "SELECT * \n" +
                "FROM `product` AS p INNER JOIN typeproduct AS tp ON p.type = tp.id WHERE p.favorite = 1";
        ArrayList<Product> listProduct = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            listProduct = new ArrayList<Product>();
            // lay tat ca product getAll
            preparedStatement = connection.prepareStatement(sql);
            // lay dl ra tu bang
            resultSet = preparedStatement.executeQuery();

            // lay du lieu va them vao doi tuong product

            while (resultSet.next()) {
                // tao doi tuong Product
                Product product = new Product();
                // tao doi tuong TypeProduct
                TypeProduct typeProduct = new TypeProduct();
                // set Id cua TypeProduct la cot thu 9 trong bang sql
                typeProduct.setId(resultSet.getInt(9));
                // set TypeProduct la cot thu 10 trong bang sql
                typeProduct.setTypeProduct(resultSet.getString(10));
                product.setId(resultSet.getInt(1));
                product.setProductName(resultSet.getString(2));
                product.setTypeProduct(typeProduct);
                product.setSale(resultSet.getInt(4));
                product.setImage(resultSet.getString(5));
                product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
                product.setActived((resultSet.getInt(7) == 1) ? true : false);
                product.setCreateDate(resultSet.getDate(8));
                listProduct.add(product);
            }
            return listProduct;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listProduct;

    }
    public Product getProductById(int id){
        Product product = new Product();
        return product;
    }
}
