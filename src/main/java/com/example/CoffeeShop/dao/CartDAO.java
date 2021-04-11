package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Cart;
import com.example.CoffeeShop.modal.ProductsInCart;
import com.example.CoffeeShop.modal.Role;
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
        String sql = "SELECT * FROM `cart` AS c INNER JOIN productsincart AS pic ON c.id_cart = pic.cart_id WHERE pic.selected = 0 " +
                "AND pic.bought = 0 AND c.user_id = ?";
        Connection connection = null;
        Cart cart = null;
        List<ProductsInCart> listProduct = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, user.getId());
            ResultSet resultSet = preparedStatement.executeQuery();
            cart = new Cart();
            listProduct = new ArrayList<ProductsInCart>();
            while (resultSet.next()) {
                int idProduct = resultSet.getInt("product_id");
                boolean productIsExist = false;
                for (int i = 0; i < listProduct.size(); i++) {
                    if (idProduct == listProduct.get(i).getIdProduct()) {
                        productIsExist = true;
                        break;
                    }
                }
                if (!productIsExist) {
                    cart.setId(resultSet.getInt("id_cart"));
                    cart.setUser(user);
                    cart.setNote("");
                    ProductsInCart productsInCart = new ProductsInCart();
                    productsInCart.setIdProduct(idProduct);
                    productsInCart.setIdSizeProduct(resultSet.getInt("size_product_id"));
                    productsInCart.setSale(resultSet.getInt("sale"));
                    productsInCart.setQuantity(resultSet.getInt("quantity"));
                    productsInCart.setSelected((resultSet.getInt("selected") == 1) ? true : false);
                    productsInCart.setBought((resultSet.getInt("bought") == 1) ? true : false);
                    listProduct.add(productsInCart);
                } else {
                    ProductsInCart productsInCart = new ProductsInCart();
                    productsInCart.setIdProduct(idProduct);
                    productsInCart.setIdSizeProduct(resultSet.getInt("size_product_id"));
                    productsInCart.setSale(resultSet.getInt("sale"));
                    productsInCart.setQuantity(resultSet.getInt("quantity"));
                    productsInCart.setSelected((resultSet.getInt("selected") == 1) ? true : false);
                    productsInCart.setBought((resultSet.getInt("bought") == 1) ? true : false);
                    listProduct.add(productsInCart);
                }
            }
            cart.setListProductsInCart(listProduct);
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return cart;
    }

    public static boolean addProductToCart(Cart cart, int idProduct, int quantity, int idSizeProduct, int sale) {
        boolean isProductInCart = false;
        for (ProductsInCart productsInCart : cart.getListProductsInCart()) {
            if (productsInCart.getIdProduct() == idProduct) {
                productsInCart.setQuantity(productsInCart.getIdProduct() + quantity);
                isProductInCart = true;
                return true;
            }
        }
        if (!isProductInCart) {
            cart.getListProductsInCart().add(new ProductsInCart(idProduct, idSizeProduct, sale, quantity, false, false));
            return true;
        }
        return false;
    }
}
