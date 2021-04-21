package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.ProductsInCart;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductsInCartDAO {
    public static List<ProductsInCart> getListProductInCart(int idCart) {
        String sql = "SELECT * FROM `productsincart` AS pic INNER JOIN cart AS c ON c.id_cart = pic.cart_id WHERE c.id_cart = ?";
        Connection connection = null;
        List<ProductsInCart> listProduct = null;
        List<Integer> listIdProduct = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idCart);
            ResultSet resultSet = preparedStatement.executeQuery();
            listProduct = new ArrayList<ProductsInCart>();
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
                    ProductsInCart productsInCart = new ProductsInCart();
                    listIdProduct.add(idProduct);
                    productsInCart.setIdSizeProduct(resultSet.getInt("size_product_id"));
                    productsInCart.setSale(resultSet.getInt("sale"));
                    productsInCart.setQuantity(resultSet.getInt("quantity"));
                    productsInCart.setSelected(false);
                    listProduct.add(productsInCart);
                } else {
                    ProductsInCart productsInCart = new ProductsInCart();
                    listIdProduct.add(idProduct);
                    productsInCart.setIdSizeProduct(resultSet.getInt("size_product_id"));
                    productsInCart.setSale(resultSet.getInt("sale"));
                    productsInCart.setQuantity(resultSet.getInt("quantity"));
                    productsInCart.setSelected(false);
                    listProduct.add(productsInCart);
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

    public static boolean insertProductsInCart(int cartId, int productId, int sizeProductId, int sale, int quantity){
        String sql = "INSERT INTO productsincart VALUES (?,?,?,?,?)";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cartId);
            preparedStatement.setInt(2, productId);
            preparedStatement.setInt(3, sizeProductId);
            preparedStatement.setInt(4, sale);
            preparedStatement.setInt(5, quantity);
            preparedStatement.executeUpdate();
            result = true;
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }
    public static boolean updateProductsInCart(int cartId, int productId, int quantity, int sizeProductId){
        String sql = "UPDATE productsincart SET size_product_id = ?, quantity = ? WHERE cart_id = ? AND product_id = ?";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, sizeProductId);
            preparedStatement.setInt(2, quantity);
            preparedStatement.setInt(3,cartId);
            preparedStatement.setInt(4,productId);
            preparedStatement.executeUpdate();
            result = true;
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }

    public static boolean removeProductsInCart(int cartId, int productId){
        String sql = "DELETE FROM productsincart WHERE cart_id = ? AND product_id = ?";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,cartId);
            preparedStatement.setInt(2,productId);
            preparedStatement.executeUpdate();
            result = true;
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }
}
