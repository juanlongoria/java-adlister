package com.codeup.adlister.dao;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;



import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

//    @Override
//    public List<User> all() {
//        Statement stmt = null;
//        try {
//            stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM Users");
//            return createUsersFromResults(rs);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all ads.", e);
//        }
//    }

    //find by username Method
    @Override
    public User findByUsername(String username) {
        String sql = "SELECT * FROM users WHERE username = ?";
        User user = new User();
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            user.setId(rs.getLong("id"));
            user.setUsername(rs.getString("username"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }


    @Override
    public Long insert(User user) {

        String sql = "INSERT INTO Users(username, email, password) VALUES (?, ?, ?)";
        long id = 0;

        try {
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            id = rs.getLong(1);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;

    }
}





//            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
//            stmt.setLong(1, user.getUsername());
//            stmt.setString(2, user.getEmail());
//            stmt.setString(3, user.getPassword());
//            stmt.executeUpdate();
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating a new ad.", e);
//        }
//    }
//
//    private String createInsertQuery(User user) {
//        return "INSERT INTO ads(user_id, title, description) VALUES "
//                + "(" + user.getUsername() + ", "
//                + "'" + user.getEmail() +"', "
//                + "'" + user.getPassword() + "')";
//    }

