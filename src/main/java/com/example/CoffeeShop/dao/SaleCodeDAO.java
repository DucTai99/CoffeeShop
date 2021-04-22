package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.SaleCode;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SaleCodeDAO {
    public static SaleCode saleByNameSale(String nameSale){
        String sql = "SELECT * FROM `salecode` WHERE name_sale = ?";
        Connection connection = null;
        SaleCode saleCode = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, nameSale);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            saleCode = new SaleCode();
            saleCode.setId(resultSet.getInt("id_sale_code"));
            saleCode.setNameSale(resultSet.getString("name_sale"));
            saleCode.setSale(resultSet.getInt("sale"));
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return saleCode;
    }
    public static SaleCode saleByIdSale(int idSale){
        String sql = "SELECT * FROM `salecode` WHERE id_sale_code = ?";
        Connection connection = null;
        SaleCode saleCode = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idSale);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            saleCode = new SaleCode();
            saleCode.setId(resultSet.getInt("id_sale_code"));
            saleCode.setNameSale(resultSet.getString("name_sale"));
            saleCode.setSale(resultSet.getInt("sale"));
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return saleCode;
    }

    public static void main(String[] args) {
        System.out.println(saleByNameSale(""));
    }
}
