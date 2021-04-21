package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.ProductsInCart;
import com.example.CoffeeShop.modal.User;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    public static Cart getCartByUser(User user) {
        String sql = "SELECT * FROM `cart` AS c WHERE c.user_id = ?";
        Connection connection = null;
        Cart cart = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, user.getId());
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            cart = new Cart();
            cart.setId(resultSet.getInt("id_cart"));
            cart.setUser(user);
            cart.setListProductsInCart(ProductsInCartDAO.getListProductInCart(resultSet.getInt("id_cart")));
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return cart;
    }

    public static boolean addProductToCart(Cart cart, int idProduct, int quantity, int idSizeProduct, int sale) {
        boolean isProductInCart = false;
        for (ProductsInCart productsInCart : cart.getListProductsInCart()) {
            if (productsInCart.getProduct().getId() == idProduct) {
                int quantityTotal = productsInCart.getQuantity() + quantity;
                if (ProductsInCartDAO.updateProductsInCart(cart.getId(), idProduct, quantityTotal, idSizeProduct)) {
                    isProductInCart = true;
                    return true;
                }
            }
        }
        if (!isProductInCart) {
            if (ProductsInCartDAO.insertProductsInCart(cart.getId(), idProduct, idSizeProduct, sale, quantity)) {
                return true;
            }
        }
        return false;
    }

}
