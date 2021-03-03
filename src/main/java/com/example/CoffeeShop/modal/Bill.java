package com.example.CoffeeShop.modal;

import java.sql.Date;

public class Bill {
    private int id;
    private int total;
    private Payment payment;
    private Status status;
    private Date createDate;
    private Cart cart;
    private User user;
    private SaleCode saleCode;

    public Bill() {
    }

    public Bill(int id, int total, Payment payment, Status status, Date createDate, Cart cart, User user, SaleCode saleCode) {
        this.id = id;
        this.total = total;
        this.payment = payment;
        this.status = status;
        this.createDate = createDate;
        this.cart = cart;
        this.user = user;
        this.saleCode = saleCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public SaleCode getSaleCode() {
        return saleCode;
    }

    public void setSaleCode(SaleCode saleCode) {
        this.saleCode = saleCode;
    }
}
