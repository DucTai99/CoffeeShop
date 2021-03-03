package com.example.CoffeeShop.util;

public class UrlUtils {
    static final String HOST = "http://localhost:8080/CoffeeShop/";

    public static String fullPath(String path) {
        return HOST + path;
    }
}
