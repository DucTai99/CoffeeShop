package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;

public class ProductsInCartDAO {
    public static boolean insertProductsInCart(int productId, int cartId, int sizeProductId, int sale, int quantity){
        String sql = "INSERT INTO productsincart VALUES (?,?,?,?,?,?,?);";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            preparedStatement.setInt(2, cartId);
            preparedStatement.setInt(3, sizeProductId);
            preparedStatement.setInt(4, sale);
            preparedStatement.setInt(5, quantity);
            preparedStatement.setInt(6,0);
            preparedStatement.setInt(7,0);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int row = resultSet.getRow();
            if (resultSet != null && row == 1) {
                result = true;
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }
}
