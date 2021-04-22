package com.example.CoffeeShop.modal;

public class SaleCode {
    private int id;
    private String nameSale;
    private int sale;

    public SaleCode() {
    }

    public SaleCode(int id, String nameSale, int sale) {
        this.id = id;
        this.nameSale = nameSale;
        this.sale = sale;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameSale() {
        return nameSale;
    }

    public void setNameSale(String nameSale) {
        this.nameSale = nameSale;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    @Override
    public String toString() {
        return "SaleCode{" +
                "id=" + id +
                ", nameSale='" + nameSale + '\'' +
                ", sale=" + sale +
                '}';
    }
}
