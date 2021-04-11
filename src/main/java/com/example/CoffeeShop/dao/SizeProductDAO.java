package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.SizeProduct;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SizeProductDAO {
    public static List<SizeProduct> getAllSizeProduct(){
        String sql = "SELECT * FROM `sizeproduct`";
        List<SizeProduct> listSizeProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca loai san Pham
            listSizeProduct = new ArrayList<SizeProduct>();
            while (resultSet.next()){
                SizeProduct sizeProduct = new SizeProduct();
                sizeProduct.setId(resultSet.getInt("id_size_product"));
                sizeProduct.setSizeName(resultSet.getString("size_name"));
                listSizeProduct.add(sizeProduct);
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listSizeProduct;
    }
}
