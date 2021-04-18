package com.example.CoffeeShop.modal;

import com.example.CoffeeShop.dao.ProductDAO;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private int id;
    private User user;
    private List<ProductsInCart> listProductsInCart;
    private String note;

    public Cart() {
    }

    public Cart(int id, User user, List<ProductsInCart> listProductsInCart, String note) {
        this.id = id;
        this.user = user;
        this.listProductsInCart = listProductsInCart;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<ProductsInCart> getListProductsInCart() {
        return listProductsInCart;
    }

    public void setListProductsInCart(List<ProductsInCart> listProductsInCart) {
        this.listProductsInCart = listProductsInCart;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getPriceProductSize(ProductsInCart productsInCart) {
        int price = 0;
        for (PriceProduct priceProduct : productsInCart.getProduct().getPriceProducts()) {
            if (priceProduct.getSizeProduct().getId() == productsInCart.getIdSizeProduct()) {
                price += priceProduct.getPrice();
            }
        }
        return price;
    }

    public int getAllQuantity() {
        int sum = 0;
        for (ProductsInCart productsInCart : listProductsInCart) {
            sum += productsInCart.getQuantity();
        }
        return sum;
    }

    public int totalProduct(ProductsInCart productsInCart) {
        int total = 0;
        int price = getPriceProductSize(productsInCart);
        if (productsInCart.getSale() > 0) {
            total = total + (productsInCart.getProduct().getSalePrice(price) * productsInCart.getQuantity());
        } else {
            total = total + (price * productsInCart.getQuantity());
        }
        return total;
    }

    public int totalAllProduct() {
        int total = 0;
        for (ProductsInCart productsInCart : listProductsInCart) {
            int price = getPriceProductSize(productsInCart);
            if (productsInCart.getSale() > 0) {
                total = total + (productsInCart.getProduct().getSalePrice(price) * productsInCart.getQuantity());
            } else {
                total = total + (price * productsInCart.getQuantity());
            }
        }
        return total;
    }
}
