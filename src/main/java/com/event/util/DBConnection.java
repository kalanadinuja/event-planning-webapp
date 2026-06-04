package com.event.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3307/onlineevent"; 
    private static final String USERNAME = "root"; 
    private static final String PASSWORD = "kalana123"; 

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); // correct driver of mine
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
