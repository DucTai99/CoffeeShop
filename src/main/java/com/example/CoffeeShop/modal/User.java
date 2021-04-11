package com.example.CoffeeShop.modal;

import java.sql.Date;

public class User {
    private int id;
    private String accountName;
    private String accountPassword;
    private Role role;
    private String userName;
    private String email;
    private int phone;
    private String address;
    private boolean actived;
    private Date createDate;

    public User() {
    }

    public User(int id, String accountName, String accountPassword, Role role, String userName, String email, int phone, String address, boolean actived, Date createDate) {
        this.id = id;
        this.accountName = accountName;
        this.accountPassword = accountPassword;
        this.role = role;
        this.userName = userName;
        this.email = email;
        this.phone = phone;
        this.address = address;
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

    public boolean getActived() {
        return actived;
    }

    public void setActived(boolean actived) {
        this.actived = actived;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", accountName='" + accountName + '\'' +
                ", accountPassword='" + accountPassword + '\'' +
                ", role=" + role.getRoleName() +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                ", address='" + address + '\'' +
                ", actived=" + actived +
                ", createDate=" + createDate +
                '}';
    }
}
