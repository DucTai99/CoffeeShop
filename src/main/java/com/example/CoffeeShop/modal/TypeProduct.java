package com.example.CoffeeShop.modal;

public class TypeProduct {
    private int id;
    private String typeProduct;

    public TypeProduct() {
    }

    public TypeProduct(int id, String typeProduct) {
        this.id = id;
        this.typeProduct = typeProduct;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }
}
