package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Entity;

@Entity
@Table(name="SanPham")
public class SanPham implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(name = "PRUDUCT_ID")
	private int PRUDUCT_ID;
	@Column(name = "PRODUCT_NAME")
	private String PRODUCT_NAME;
	@Column(name = "DESCRIPTION")
	private String DESCRIPTION;
	@Column(name = "PRICE")
	private String PRICE;
	@Column(name = "CATEGORY_ID")
	private int CATEGORY_ID;
	@Column(name = "TAIKHOAN")
	private String TAIKHOAN;
	
	public SanPham() {
		// TODO Auto-generated constructor stub
	}

	public SanPham(int pRUDUCT_ID, String pRODUCT_NAME, String dESCRIPTION, String pRICE, int cATEGORY_ID,
			String tAIKHOAN) {
		super();
		PRUDUCT_ID = pRUDUCT_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		DESCRIPTION = dESCRIPTION;
		PRICE = pRICE;
		CATEGORY_ID = cATEGORY_ID;
		TAIKHOAN = tAIKHOAN;
	}

	public int getPRUDUCT_ID() {
		return PRUDUCT_ID;
	}

	public void setPRUDUCT_ID(int pRUDUCT_ID) {
		PRUDUCT_ID = pRUDUCT_ID;
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

	public String getPRICE() {
		return PRICE;
	}

	public void setPRICE(String pRICE) {
		PRICE = pRICE;
	}

	public int getCATEGORY_ID() {
		return CATEGORY_ID;
	}

	public void setCATEGORY_ID(int cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}

	public String getTAIKHOAN() {
		return TAIKHOAN;
	}

	public void setTAIKHOAN(String tAIKHOAN) {
		TAIKHOAN = tAIKHOAN;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
