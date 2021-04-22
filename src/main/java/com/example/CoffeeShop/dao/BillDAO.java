package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.*;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BillDAO {

    public static List<Bill> getListBillByCartId(int idCart) {
        String sql = "SELECT * FROM `bill` AS b WHERE b.cart_id = ?";
        List<Bill> listBill = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idCart);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            listBill = new ArrayList<Bill>();
            while (resultSet.next()) {
                Bill bill = new Bill();
                bill.setId(resultSet.getInt("id_bill"));
                bill.setTotal(resultSet.getInt("total"));
                bill.setIdPayment(resultSet.getInt("payment"));
                bill.setIdStatus(resultSet.getInt("bill_status"));
                bill.setCreateDate(resultSet.getDate("create_date"));
                bill.setIdCart(resultSet.getInt("cart_id"));
                bill.setUser(resultSet.getInt("employee_id"));
                bill.setSaleCode(resultSet.getInt("sale_code_id"));
                listBill.add(bill);
            }
            for (Bill bill : listBill) {
                bill.setListproductInBill(ProductInBillDAO.getListProductInBill(bill.getId()));
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listBill;
    }

    public static void insertBill(int total, int idCart, int idSaleCode, String note){
        String sql = "INSERT INTO `bill` (total,payment,bill_status,create_date,cart_id,employee_id,sale_code_id,note) VALUES (?,?,?,?,?,?,?,?);";
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, total);
            preparedStatement.setInt(2, 1);
            preparedStatement.setInt(3, 1);
            preparedStatement.setDate(4, Date.valueOf(java.time.LocalDate.now()));
            preparedStatement.setInt(5, idCart);
            preparedStatement.setInt(6, 2);
            preparedStatement.setInt(7, idSaleCode);
            preparedStatement.setString(8, note);
            preparedStatement.executeUpdate();
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
    }

    public static int getIdBillLastest(int idCart){
        String sql = "SELECT * FROM `bill` AS b WHERE b.cart_id = ?";
        Connection connection = null;
        int idBill = 0;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idCart);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            idBill = resultSet.getInt("id_bill");
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return idBill;
    }

    public static void main(String[] args) {
        System.out.println(getListBillByCartId(1));
    }
}
