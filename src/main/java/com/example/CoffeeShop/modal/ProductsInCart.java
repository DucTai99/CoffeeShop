package com.example.CoffeeShop.modal;

public class ProductsInCart {
    private Product product;
    private int idSizeProduct;
    private int sale;
    private int quantity;
    private boolean selected;

    public ProductsInCart() {
    }

    public ProductsInCart(Product product, int idSizeProduct, int sale, int quantity, boolean selected) {
        this.product = product;
        this.idSizeProduct = idSizeProduct;
        this.sale = sale;
        this.quantity = quantity;
        this.selected = selected;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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


    @Override
    public String toString() {
        return "ProductsInCart{" +
                "product=" + product.getProductName() +
                ", idSizeProduct=" + idSizeProduct +
                ", sale=" + sale +
                ", quantity=" + quantity +
                ", selected=" + selected +
                '}';
    }
}
