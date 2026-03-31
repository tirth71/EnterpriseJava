/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.assignment2.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    private static Connection con = null;

    public static Connection getConnection() {

        try {
            if (con == null || con.isClosed()) {

                Class.forName("com.mysql.cj.jdbc.Driver");

                String url = "jdbc:mysql://localhost:3306/fashion_store?useSSL=false&serverTimezone=UTC";
                String user = "root";
                String password = "root";   // change if needed

                con = DriverManager.getConnection(url, user, password);
            }
        } catch (Exception e) {
            e.printStackTrace();   // VERY IMPORTANT for debugging
        }
        return con;
    }
}

            


