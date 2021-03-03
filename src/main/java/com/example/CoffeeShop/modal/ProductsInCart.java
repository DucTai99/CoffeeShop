package com.example.CoffeeShop.modal;

public class ProductsInCart {
    private Product product;
    private Cart cart;
    private int quantity;
    private boolean selected;
    private boolean bought;

    public ProductsInCart() {
    }

    public ProductsInCart(Product product, Cart cart, int quantity, boolean selected, boolean bought) {
        this.product = product;
        this.cart = cart;
        this.quantity = quantity;
        this.selected = selected;
        this.bought = bought;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public boolean isBought() {
        return bought;
    }

    public void setBought(boolean bought) {
        this.bought = bought;
    }
}
