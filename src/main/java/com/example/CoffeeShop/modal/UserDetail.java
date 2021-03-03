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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
