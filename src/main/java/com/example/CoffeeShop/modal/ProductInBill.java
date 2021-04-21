package com.example.CoffeeShop.modal;

public class ProductInBill {
    private Product product;
    private int sizeProductId ;
    private int sale  ;
    private int quantity ;

    public ProductInBill() {
    }

    public ProductInBill(Product product, int sizeProductId, int sale, int quantity) {
        this.product = product;
        this.sizeProductId = sizeProductId;
        this.sale = sale;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getSizeProductId() {
        return sizeProductId;
    }

    public void setSizeProductId(int sizeProductId) {
        this.sizeProductId = sizeProductId;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "ProductsInBill{" +
                "product=" + product.getProductName() +
                ", idSizeProduct=" + sizeProductId +
                ", sale=" + sale +
                ", quantity=" + quantity +
                '}';
    }
}
