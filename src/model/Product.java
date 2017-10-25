package model;

import java.io.Serializable;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
//import org.hibernate.annotations.Entity;

@Entity
@Table(name="Product")
public class Product implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(name = "PRODUCT_ID")
	private int PRODUCT_ID;
	@Column(name = "PRODUCT_NAME")
	private String PRODUCT_NAME;
	@Column(name = "DESCRIPTION")
	private String DESCRIPTION;
	@Column(name = "PRICE")
	private float PRICE;
	@Column(name = "CATEGORY_ID")
	private String CATEGORY_ID;
	@Column(name = "TAIKHOAN")
	private String TAIKHOAN;
	@Column(name = "SRC_IMAGE")
	private String SRC_IMAGE;
	public Product() {
	}
	public Product(int pRODUCT_ID, String pRODUCT_NAME, String dESCRIPTION, float pRICE, String cATEGORY_ID,
			String tAIKHOAN, String sRC_IMAGE) {
		PRODUCT_ID = pRODUCT_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		DESCRIPTION = dESCRIPTION;
		PRICE = pRICE;
		CATEGORY_ID = cATEGORY_ID;
		TAIKHOAN = tAIKHOAN;
		SRC_IMAGE = sRC_IMAGE;
	}
	public Product(String pRODUCT_NAME, String dESCRIPTION, float pRICE, String cATEGORY_ID,
			String tAIKHOAN, String sRC_IMAGE) {
		PRODUCT_NAME = pRODUCT_NAME;
		DESCRIPTION = dESCRIPTION;
		PRICE = pRICE;
		CATEGORY_ID = cATEGORY_ID;
		TAIKHOAN = tAIKHOAN;
		SRC_IMAGE = sRC_IMAGE;
	}
	public int getPRODUCT_ID() {
		return PRODUCT_ID;
	}
	public void setPRODUCT_ID(int pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public float getPRICE() {
		return PRICE;
	}
	public void setPRICE(float pRICE) {
		PRICE = pRICE;
	}
	public String getCATEGORY_ID() {
		return CATEGORY_ID;
	}
	public void setCATEGORY_ID(String cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}
	public String getTAIKHOAN() {
		return TAIKHOAN;
	}
	public void setTAIKHOAN(String tAIKHOAN) {
		TAIKHOAN = tAIKHOAN;
	}
	public String getSRC_IMAGE() {
		return SRC_IMAGE;
	}
	public void setSRC_IMAGE(String sRC_IMAGE) {
		SRC_IMAGE = sRC_IMAGE;
	}
	
	
}