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
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author tylershelter
 */
public class Product {

    public Product() {
    }

    public Product(String code, String name, float price, String img) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.img = img;
    }
    
    public Product(String code, String name, float price){
        this.code=code;
        this.name=name;
        this.price=price;
    }
    
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    private String code;
    private String name;
    private float price;
    private String img;
    
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    
    
    
    
    public boolean updateRecord() throws SQLException {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=QLShop";
            Connection con = DriverManager.getConnection(url, "sa","123456");
            String sql = "Update Products set Name = ?, Price = ? , img=?"
                    + " where Code = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, name);
            stm.setFloat(2, price);
            stm.setString(3,img);
            stm.setString(4,code);
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
    
    public boolean deleteRecord() {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=QLShop";
            Connection con = DriverManager.getConnection(url, "sa","123456");
            String sql = "delete from Products where Code = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, code);

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
    
}
