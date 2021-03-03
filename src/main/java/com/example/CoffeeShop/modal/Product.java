package com.example.CoffeeShop.modal;

import java.sql.Date;

public class Product {
    private int id;
    private String productName;
    private TypeProduct typeProduct;
    private int sale;
    private String image;
    private boolean favorite;
    private boolean actived;
    private Date createDate;

    public Product() {
    }

    public Product(int id, String productName, TypeProduct typeProduct, int sale, String image, boolean favorite, boolean actived, Date createDate) {
        this.id = id;
        this.productName = productName;
        this.typeProduct = typeProduct;
        this.sale = sale;
        this.image = image;
        this.favorite = favorite;
        this.actived = actived;
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public TypeProduct getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(TypeProduct typeProduct) {
        this.typeProduct = typeProduct;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isFavorite() {
        return favorite;
    }

    public void setFavorite(boolean favorite) {
        this.favorite = favorite;
    }

    public boolean isActived() {
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
}
