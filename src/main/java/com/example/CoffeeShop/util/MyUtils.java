package com.example.CoffeeShop.util;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Connection;

public class MyUtils {
    public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
    private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";

    // Lưu trữ Connection vào attribute của request.
    // Thông tin lưu trữ này chỉ tồn tại trong thời gian yêu cầu (request)
    // cho tới khi dữ liệu được trả về trình duyệt người dùng.
    public static void storeConnection(ServletRequest request, Connection connection) {
        request.setAttribute(ATT_NAME_CONNECTION, connection);
    }

    // Lấy đối tượng Connection đã được lưu trữ trong attribute của request.
    public static Connection getStoredConnection(ServletRequest request) {
        Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
        return conn;
    }

    // Lưu trữ thông tin người dùng đã login vào Session.
//    public static void storeLoginedUser(HttpSession session, UserAccount loginedUser) {
//        // Trên JSP có thể truy cập thông qua ${loginedUser}
//        session.setAttribute("loginedUser", loginedUser);
//    }
}
