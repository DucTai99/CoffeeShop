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

}
