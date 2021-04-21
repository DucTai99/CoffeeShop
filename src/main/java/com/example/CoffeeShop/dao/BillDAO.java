package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.*;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BillDAO {

    public static Bill getBill(int idBill) {
//        String sql = "SELECT * FROM `bill` AS b INNER JOIN productsinbill pib \n" +
//                "ON b.id_bill = pib.bill_id\n" +
//                "WHERE id_bill = ?";
//        Connection connection = null;
//        Bill bill = null;
//        try {
//            // ket noi voi database
//            connection = ConnectionUtils.getConnection();
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1, idBill);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            resultSet.last();
//            bill = new Bill();
//            bill.setId(resultSet.getInt("id_bill"));
//            bill.setTotal(resultSet.getInt("total"));
//            bill.setIdPayment(resultSet.getInt("payment"));
//            bill.setIdStatus(resultSet.getInt("bill_status"));
//            bill.setCreateDate(resultSet.getDate("create_date"));
//            bill.setIdCart(resultSet.getInt("cart_id"));
//            bill.setUser(resultSet.getInt("employee_id"));
//            bill.setSaleCode(resultSet.getInt("sale_code_id"));;
//
//            ProductInBill productInBill = new ProductInBill();
//
//            //productInBill.setProduct();
//            productInBill.setSizeProductId(resultSet.getString("size_product_id"));
//            productInBill.setSale(resultSet.getInt("sale"));
//            productInBill.setSale(resultSet.getInt("sale"));
//
//            bill.setProductInBill();
//            ConnectionUtils.closeQuietly(connection);
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        return bill;
        return null;
    }

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
//            resultSet.last();
            while (resultSet.next()) {
                Bill bill = new Bill();
                bill.setId(resultSet.getInt("id_bill"));
                bill.setTotal(resultSet.getInt("id_bill"));
                bill.setIdPayment(resultSet.getInt("payment"));
                bill.setIdStatus(resultSet.getInt("bill_status"));
                bill.setCreateDate(resultSet.getDate("create_date"));
                bill.setIdCart(resultSet.getInt("cart_id"));
                bill.setUser(resultSet.getInt("employee_id"));
                bill.setSaleCode(resultSet.getInt("sale_code_id"));
                listBill.add(bill);
            }
            for (Bill bill : listBill) {
                bill.setProductInBill(ProductInBillDAO.getListProductInBill(bill.getId()));
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listBill;
    }

    public static void main(String[] args) {
//        System.out.println(getLastestProduct());
        System.out.println(getListBillByCartId(1));
    }
}
