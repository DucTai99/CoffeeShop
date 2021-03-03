package com.example.CoffeeShop.modal;

public class Cart {
    private int id;
    private User user;
    private String note;

    public Cart() {
    }

    public Cart(int id, User user, String note) {
        this.id = id;
        this.user = user;
        this.note = note;
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
