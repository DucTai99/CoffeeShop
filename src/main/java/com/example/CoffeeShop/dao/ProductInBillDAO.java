package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.ProductInBill;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductInBillDAO {
    public static List<ProductInBill> getListProductInBill(int idBill) {
        String sql = "SELECT * FROM `productsinbill`WHERE bill_id = ?";
        Connection connection = null;
        List<ProductInBill> listProduct = null;
        List<Integer> listIdProduct = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idBill);
            ResultSet resultSet = preparedStatement.executeQuery();
            listProduct = new ArrayList<ProductInBill>();
            listIdProduct = new ArrayList<Integer>();
            while (resultSet.next()) {
                int idProduct = resultSet.getInt("product_id");
                boolean productIsExist = false;
                for (int i = 0; i < listIdProduct.size(); i++) {
                    if (idProduct == listIdProduct.get(i)) {
                        productIsExist = true;
                        break;
                    }
                }
                if (!productIsExist) {
                    ProductInBill productsInBill = new ProductInBill();
                    listIdProduct.add(idProduct);
                    productsInBill.setSizeProductId(resultSet.getInt("size_product_id"));
                    productsInBill.setSale(resultSet.getInt("sale"));
                    productsInBill.setQuantity(resultSet.getInt("quantity"));
                    listProduct.add(productsInBill);
                } else {
                    listIdProduct.add(idProduct);
                }
            }
            for (int i = 0; i < listProduct.size(); i++) {
                listProduct.get(i).setProduct(ProductDAO.getProductById(listIdProduct.get(i)));
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return listProduct;
    }

    public static void main(String[] args) {
        System.out.println(getListProductInBill(1));
    }
}
