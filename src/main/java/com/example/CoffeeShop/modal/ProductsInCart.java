package com.example.CoffeeShop.modal;

public class ProductsInCart {
    private int idProduct;
    private int idSizeProduct;
    private int sale;
    private int quantity;
    private boolean selected;
    private boolean bought;

    public ProductsInCart() {
    }

    public ProductsInCart(int idProduct, int idSizeProduct, int sale, int quantity, boolean selected, boolean bought) {
        this.idProduct = idProduct;
        this.idSizeProduct = idSizeProduct;
        this.sale = sale;
        this.quantity = quantity;
        this.selected = selected;
        this.bought = bought;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdSizeProduct() {
        return idSizeProduct;
    }

    public void setIdSizeProduct(int idSizeProduct) {
        this.idSizeProduct = idSizeProduct;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
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
