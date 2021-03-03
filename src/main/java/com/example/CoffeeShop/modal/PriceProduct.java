package com.example.CoffeeShop.modal;

public class PriceProduct {
    private Product product;
    private SizeProduct sizeProduct;
    private int price;

    public PriceProduct() {
    }

    public PriceProduct(Product product, SizeProduct sizeProduct, int price) {
        this.product = product;
        this.sizeProduct = sizeProduct;
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public SizeProduct getSizeProduct() {
        return sizeProduct;
    }

    public void setSizeProduct(SizeProduct sizeProduct) {
        this.sizeProduct = sizeProduct;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
