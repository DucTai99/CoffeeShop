package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.Role;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.modal.User;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
            user.setPhone(resultSet.getString("phone"));
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

    public static User getUserByAccountName(String accountName) {
        String sql = "SELECT * FROM `user` AS u INNER JOIN role AS r ON u.role = r.id_role WHERE u.account_name = ?";
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
            user.setUserName(resultSet.getString("user_name"));
            user.setEmail(resultSet.getString("email"));
            user.setPhone(resultSet.getString("phone"));
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

    public static boolean insertUser(String accountName, String accountPassword, String user_name, String email, String phone) {
        boolean result = false;
        String sql = "INSERT INTO `user` (account_name,account_password,user_name,email,phone,address,role,actived,create_date) VALUES (?,?,?,?,?,?,?,?,?);";
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
            preparedStatement.setString(2, accountPassword);
            preparedStatement.setString(3, user_name);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, phone);
            preparedStatement.setString(6, "");
            preparedStatement.setInt(7, 2);
            preparedStatement.setInt(8, 1);
            preparedStatement.setDate(9, Date.valueOf(java.time.LocalDate.now()));
            preparedStatement.executeUpdate();
            result = true;
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        return result;
    }

    public static boolean checkAccountName(String accountName) {
        String sql = "SELECT * FROM `user` WHERE account_name = ?";
        Connection connection = null;
        boolean result = false;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, accountName);
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

    public static boolean checkEmail(String email) {
        boolean result = false;
        String sql = "SELECT * FROM `user` WHERE email = ?";
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
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

    public static boolean checkPhone(String phone) {
        boolean result = false;
        if (phone.length() <= 10) {
            String sql = "SELECT * FROM `user` WHERE phone = ?";
            Connection connection = null;
            try {
                // ket noi voi database
                connection = ConnectionUtils.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, phone);
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
        } else {
            result = false;
        }
        return result;
    }

    public static boolean validateEmail(String email) {
        String regex = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    public static void main(String[] args) {
        System.out.println(validateEmail("tai113gmail.com"));

    }
}
