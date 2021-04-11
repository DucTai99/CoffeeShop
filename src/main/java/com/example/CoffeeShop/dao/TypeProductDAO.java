package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.PriceProduct;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeProductDAO {
    public static TypeProduct getTypeProduct(int productType) {
        String sql = "SELECT * FROM `typeproduct` AS tp WHERE tp.id_type_product = ?";
        Connection connection = null;
        TypeProduct typeProduct = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productType);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            typeProduct = new TypeProduct();
            typeProduct.setId(resultSet.getInt(1));
            typeProduct.setTypeProduct(resultSet.getString(2));
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return typeProduct;
    }

    public static List<TypeProduct> getAllTypeProduct(){
        String sql = "SELECT * FROM `typeproduct`";
        List<TypeProduct> listTypeProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca loai san Pham
            listTypeProduct = new ArrayList<TypeProduct>();
            while (resultSet.next()){
                TypeProduct typeProduct = new TypeProduct();
                typeProduct.setId(resultSet.getInt("id_type_product"));
                typeProduct.setTypeProduct(resultSet.getString("type_product"));
                listTypeProduct.add(typeProduct);
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listTypeProduct;
    }
}
