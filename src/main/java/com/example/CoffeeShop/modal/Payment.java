package com.example.CoffeeShop.modal;

public class Payment {
    private int id;
    private String paymentType;

    public Payment() {
    }

    public Payment(int id, String paymentType) {
        this.id = id;
        this.paymentType = paymentType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }
}
