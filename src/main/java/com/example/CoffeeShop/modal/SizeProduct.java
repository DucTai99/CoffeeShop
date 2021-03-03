package com.example.CoffeeShop.modal;

public class SizeProduct {
    private int id;
    private String sizeName;

    public SizeProduct() {
    }

    public SizeProduct(int id, String sizeName) {
        this.id = id;
        this.sizeName = sizeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSizeName() {
        return sizeName;
    }

    public void setSizeName(String sizeName) {
        this.sizeName = sizeName;
    }
}
