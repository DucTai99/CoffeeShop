package com.example.CoffeeShop.modal;

import com.example.CoffeeShop.dao.ProductDAO;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private int id;
    private User user;
    private List<ProductsInCart> listProductsInCart;
    private String note;

    public Cart() {
    }

    public Cart(int id, User user,List<ProductsInCart> listProductsInCart, String note) {
        this.id = id;
        this.user = user;
        this.listProductsInCart = listProductsInCart;
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

    public List<ProductsInCart> getListProductsInCart() {
        return listProductsInCart;
    }

    public void setListProductsInCart(List<ProductsInCart> listProductsInCart) {
        this.listProductsInCart = listProductsInCart;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public List<Product> getListProduct(){
        List<Product> listProduct = new ArrayList<Product>();
        for (ProductsInCart productsInCart : listProductsInCart){
            listProduct.add(ProductDAO.getProductById(productsInCart.getIdProduct()));
        }
        return listProduct;
    }

    public int getPriceProductSize(Product product, int idSizeProduct){
        int price = 0;
        for (PriceProduct priceProduct : product.getPriceProducts()){
            if (priceProduct.getSizeProduct().getId() == idSizeProduct){
                    price += priceProduct.getPrice();
                }
        }
        return price;
    }
    public int getAllQuantity(){
        int sum = 0;
        for (ProductsInCart productsInCart : listProductsInCart){
            sum += productsInCart.getQuantity();
        }
        return sum;
    }

    public int totalProduct(List<Product> list){
        int total = 0;
        for (int i = 0; i < list.size();i++){
            int price = getPriceProductSize(list.get(i),listProductsInCart.get(i).getIdSizeProduct());
            if (list.get(i).getSale() > 0) {
                total = total + (list.get(i).getSalePrice(price) * listProductsInCart.get(i).getQuantity());
            } else {
                total = total + (price * listProductsInCart.get(i).getQuantity());
            }
        }
         return total;
    }
}
