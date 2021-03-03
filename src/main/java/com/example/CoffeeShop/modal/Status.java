package com.example.CoffeeShop.modal;

public class Status {
    private int id;
    private String statusType;

    public Status() {
    }

    public Status(int id, String statusType) {
        this.id = id;
        this.statusType = statusType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatusType() {
        return statusType;
    }

    public void setStatusType(String statusType) {
        this.statusType = statusType;
    }
}
