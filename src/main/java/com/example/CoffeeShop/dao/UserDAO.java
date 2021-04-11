package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Role;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.modal.User;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;

public class UserDAO {
    public static User getUserById(int idUser) {
        String sql = "SELECT * FROM `user` AS u INNER JOIN userdetail AS ud ON u.id_user = ud.user_id INNER JOIN role AS r ON u.role = r.id_role WHERE u.id_user = ?";
        Connection connection = null;
        User user = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idUser);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            user = new User();
            user.setId(resultSet.getInt("id_user"));
            user.setAccountName(resultSet.getString("account_name"));
            user.setAccountPassword(resultSet.getString("account_password"));
            Role role = new Role();
            role.setId(resultSet.getInt("id_role"));
            role.setRoleName(resultSet.getString("role_name"));
            user.setRole(role);
            user.setUserName(resultSet.getString("user_detail_name"));
            user.setEmail(resultSet.getString("email"));
            user.setPhone(resultSet.getInt("phone"));
            user.setAddress(resultSet.getString("address"));
            user.setActived((resultSet.getInt("actived") == 1) ? true : false);
            user.setCreateDate(resultSet.getDate("create_date"));
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return user;
    }
    public static User getUserByAccountName(String accountName){
        String sql = "SELECT * FROM `user` AS u INNER JOIN userdetail AS ud ON u.id_user = ud.user_id INNER JOIN role AS r ON u.role = r.id_role WHERE u.account_name = ?";
        Connection connection = null;
        User user = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            user = new User();
            user.setId(resultSet.getInt("id_user"));
            user.setAccountName(resultSet.getString("account_name"));
            user.setAccountPassword(resultSet.getString("account_password"));
            Role role = new Role();
            role.setId(resultSet.getInt("id_role"));
            role.setRoleName(resultSet.getString("role_name"));
            user.setRole(role);
            user.setUserName(resultSet.getString("user_detail_name"));
            user.setEmail(resultSet.getString("email"));
            user.setPhone(resultSet.getInt("phone"));
            user.setAddress(resultSet.getString("address"));
            user.setActived((resultSet.getInt("actived") == 1) ? true : false);
            user.setCreateDate(resultSet.getDate("create_date"));
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return user;
    }

    public static boolean userIsExist(String accountName, String accountPassword) {
        String sql = "SELECT * FROM `user` AS u WHERE u.account_name = ? AND u.account_password = ? AND u.actived = 1";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
            preparedStatement.setString(2, accountPassword);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int row = resultSet.getRow();
            if (resultSet != null && row == 1) {
                result = true;
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }

    public static boolean addUser(String accountName, String accountPassword, String email, int phone){
        String sql = "INSERT INTO `user` (account_name,account_password,role,actived,create_date) VALUES (?,?,?,?,?);";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
            preparedStatement.setString(2, accountPassword);
            preparedStatement.setInt(3, 1);
            preparedStatement.setInt(4, 1);
            preparedStatement.setDate(5, Date.valueOf(java.time.LocalDate.now()));
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int row = resultSet.getRow();
            if (resultSet != null && row == 1) {
                result = true;
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }

    public static boolean insertUser(String accountName, String accountPassword){
        String sql = "INSERT INTO `user` (account_name,account_password,role,actived,create_date) VALUES (?,?,?,?,?);";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
            preparedStatement.setString(2, accountPassword);
            preparedStatement.setInt(3, 1);
            preparedStatement.setInt(4, 1);
            preparedStatement.setDate(5, Date.valueOf(java.time.LocalDate.now()));
            int add = preparedStatement.executeUpdate();
            preparedStatement.close();
            if (add == 1) result = true;
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }
    public static void main(String[] args) {
//        System.out.println(userIsExist("tai","123"));

    }
}
