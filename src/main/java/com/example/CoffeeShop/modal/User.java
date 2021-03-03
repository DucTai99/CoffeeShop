package com.example.CoffeeShop.modal;

import java.sql.Date;

public class User {
    private int id;
    private String accountName;
    private String accountPassword;
    private Role role;
    private int actived;
    private Date createDate;

    public User() {
    }

    public User(int id, String accountName, String accountPassword, Role role, int actived, Date createDate) {
        this.id = id;
        this.accountName = accountName;
        this.accountPassword = accountPassword;
        this.role = role;
        this.actived = actived;
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getAccountPassword() {
        return accountPassword;
    }

    public void setAccountPassword(String accountPassword) {
        this.accountPassword = accountPassword;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public int getActived() {
        return actived;
    }

    public void setActived(int actived) {
        this.actived = actived;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
