package com.example.CoffeeShop.util;

import com.example.CoffeeShop.database.ConnectionDB;
//import com.sun.org.apache.bcel.internal.generic.ATHROW;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {
//    public static Connection getConnection() throws SQLException, ClassNotFoundException {
//        return ConnectionDB.connect();
//    }
    public static  Connection getConnection() throws SQLException, ClassNotFoundException {
        return ConnectionDB.connect();
    }

    public static void closeQuietly(Connection connection){
        try {
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void rollbackQuietly(Connection connection){
        try {
            connection.rollback();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
