package com.example.CoffeeShop.util;

public class UrlUtils {
    static final String HOST = "http://localhost:8080/CoffeeShop/";

    public static String pathHost(String path){
        return HOST + path;
    }

    public static String fullPathClient(String path) {
        return HOST + "client/" + path;
    }

    public static String fullPathAdmin(String path) {
        return HOST + "admin/" + path;
    }
}
