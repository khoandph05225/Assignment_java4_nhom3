/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author tylershelter
 */
public class LoginBean {

    public LoginBean() {
    }
    
    public boolean checkLogin(String username, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=QLShop";
            Connection con = DriverManager.getConnection(url, "sa","123456");
            String sql = "select * from Customers where Username = ? and Password = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            if (result) {
                return true;
            }
        } catch (Exception E) {
            E.printStackTrace();
        }

        return false;

    }
    
public boolean insert(String username, String password, String lastname, String email, boolean roles){
         try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Sinhvien";
            Connection con = DriverManager.getConnection(url, "sa","123456");
            String sql = "insert into Registration value(?,?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, lastname);
            stm.setString(4, email);
            stm.setBoolean(5, roles);
            int result = stm.executeUpdate();

            stm.close();
            con.close();
            if (result > 0) {
                return true;

            }

        } catch (Exception E) {
            E.printStackTrace();
        }
        return false;
    }

    
    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRoles() {
        return roles;
    }

    public void setRoles(boolean roles) {
        this.roles = roles;
    }
    private String username;
    private String password;
    private boolean roles;
    
}
