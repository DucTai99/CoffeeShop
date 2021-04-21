package com.example.CoffeeShop.modal;

import java.sql.Date;
import java.util.List;

public class Bill {
    private int id;
    private int total;
    private int idPayment;
    private int idStatus;
    private Date createDate;
    private int idCart;
    private int user;
    private int saleCode;
    private List<ProductInBill> listproductInBill ;
    private String note;

    public Bill() {
    }


    public Bill(int id, int total, int idPayment, int idStatus, Date createDate, int idCart, int user, int saleCode,List<ProductInBill> listproductInBill, String note ) {
        this.id = id;
        this.total = total;
        this.idPayment = idPayment;
        this.idStatus = idStatus;
        this.createDate = createDate;
        this.idCart = idCart;
        this.user = user;
        this.saleCode = saleCode;
        this.listproductInBill= listproductInBill;
        this.note = note;
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

    public int getIdPayment(int payment) {
        return idPayment;
    }

    public void setIdPayment(int idPayment) {
        this.idPayment = idPayment;
    }

    public int getIdStatus(int bill_status) {
        return idStatus;
    }

    public void setIdStatus(int idStatus) {
        this.idStatus = idStatus;
    }

    public Date getCreateDate(Date create_date) {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getIdCart(int cart_id) {
        return idCart;
    }

    public void setIdCart(int idCart) {
        this.idCart = idCart;
    }

    public int getUser(int employee_id) {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public int getSaleCode(int sale_code_id) {
        return saleCode;
    }

    public void setSaleCode(int saleCode) {
        this.saleCode = saleCode;
    }

    public List<ProductInBill> getProductInBill() {
        return listproductInBill;
    }

    public void setProductInBill(List<ProductInBill> listproductInBill) {
        this.listproductInBill = listproductInBill;
    }

    public int getPriceProductSize(ProductInBill productInBill) {
        int price = 0;
        for (PriceProduct priceProduct : productInBill.getProduct().getPriceProducts()) {
            if (priceProduct.getSizeProduct().getId() == productInBill.getSizeProductId()) {
                price += priceProduct.getPrice();
            }
        }
        return price;
    }
    public int totalProduct(ProductInBill productInBill) {
        int total = 0;
        int price = getPriceProductSize(productInBill);
        if (productInBill.getSale() > 0) {
            total = total + (productInBill.getProduct().getSalePrice(price) * productInBill.getQuantity());
        } else {
            total = total + (price * productInBill.getQuantity());
        }
        return total;
    }

    public int totalAllProduct() {
        int total = 0;
        for (ProductInBill productInBill : listproductInBill) {
            int price = getPriceProductSize(productInBill);
            if (productInBill.getSale() > 0) {
                total = total + (productInBill.getProduct().getSalePrice(price) * productInBill.getQuantity());
            } else {
                total = total + (price * productInBill.getQuantity());
            }
        }
        return total;
    }
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", total=" + total +
                ", idPayment=" + idPayment +
                ", idStatus=" + idStatus +
                ", createDate=" + createDate +
                ", idCart=" + idCart +
                ", User=" + user +
                ", SaleCode=" + saleCode +
                ", productInBill=" + listproductInBill.size() +
                '}';
    }
}
