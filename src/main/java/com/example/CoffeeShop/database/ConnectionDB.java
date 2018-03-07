package com.example.CoffeeShop.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {
    static Connection connection;
    static String hostName;
    static String dbName;
    static String userName;
    static String password;

    public static Connection connect() throws SQLException, ClassNotFoundException {
        if (connection == null || connection.isClosed()) {
            hostName = "localhost";
            dbName = "CoffeeShop";
            userName = "root";
            password = "";
            return getMySQLConnection(hostName, dbName, userName, password);
        } else {
            return connection;
        }
    }

    public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName + "?useUnicode=true&characterEncoding=utf-8";
        connection = DriverManager.getConnection(connectionURL, userName, password);
        return connection;
    }
}
