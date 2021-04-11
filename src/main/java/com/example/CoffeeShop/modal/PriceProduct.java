package com.example.CoffeeShop.modal;

import java.util.ArrayList;

public class PriceProduct {
    private int idProduct;
    private SizeProduct sizeProduct;
    private int price;

    public PriceProduct() {
    }

    public PriceProduct(int idProduct, SizeProduct sizeProduct, int price) {
        this.idProduct = idProduct;
        this.sizeProduct = sizeProduct;
        this.price = price;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
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
