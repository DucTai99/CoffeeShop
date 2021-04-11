package com.example.CoffeeShop.modal;

public class UserDetail {
    private int id;
    private String userName;
    private String email;
    private int phone;
    private String address;
    private User user;

    public UserDetail() {
    }

    public UserDetail(int id, String userName, String email, int phone, String address, User user) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.user = user;
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
}
