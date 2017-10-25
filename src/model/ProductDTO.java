/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tylershelter
 */
public class ProductDTO {

    public ProductDTO() {
    }
    
    public ProductDTO(Product sp){
        this.sanpham = sp;
        this.quantity = 1;
    }
    
    public Product getSanpham() {
        return sanpham;
    }

    public void setSanpham(Product sanpham) {
        this.sanpham = sanpham;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    private Product sanpham;
    private int quantity;
}
