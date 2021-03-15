package com.example.CoffeeShop.modal;

import java.sql.Date;
import java.util.ArrayList;

public class Product {
    private int id;
    private String productName;
    private TypeProduct typeProduct;
    private int sale;
    private String image;
    private ArrayList<PriceProduct> priceProducts;
    private boolean favorite;
    private boolean actived;
    private Date createDate;

    public Product() {
    }

    public Product(int id, String productName, TypeProduct typeProduct, int sale, String image, ArrayList<PriceProduct> priceProducts, boolean favorite, boolean actived, Date createDate) {
        this.id = id;
        this.productName = productName;
        this.typeProduct = typeProduct;
        this.sale = sale;
        this.image = image;
        this.priceProducts = priceProducts;
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

    public ArrayList<PriceProduct> getPriceProducts() {
        return priceProducts;
    }

    public void setPriceProducts(ArrayList<PriceProduct> priceProducts) {
        this.priceProducts = priceProducts;
    }

    public int getSalePrice(int sizePrice){
        double salePercent = (100.0 - this.sale) / 100.0;
        int price = (int) Math.ceil(sizePrice * salePercent);
        return price;
    }

    @Override
    public String toString() {
        String price = "";
        String type = "";
        if (priceProducts.size() != 0){
            for (PriceProduct p : priceProducts) {
                price = price + p.getSizeProduct().getSizeName() + "-" + p.getPrice();
            }
        }
        if (typeProduct != null){
            type = typeProduct.getTypeProduct();
        }

        return "Product{" +
                "id=" + id +
                ", productName='" + productName + '\'' +
                ", typeProduct=" + type +
                ", sale=" + sale +
                ", image='" + image + '\'' +
                ", size&price=" + price +
                ", favorite=" + favorite +
                ", actived=" + actived +
                ", createDate=" + createDate +
                '}';
    }
}
