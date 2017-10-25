package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
//import org.hibernate.annotations.Entity;

@Entity
@Table(name="TROGIUP")
public class Trogiup implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(name = "MATROGIUP")
	private int MATROGIUP;
	@Column(name="TAIKHOAN")
	private String TAIKHOAN;
	@Column(name="NOIDUNG")
	private String NOIDUNG;
	
	public Trogiup() {
		// TODO Auto-generated constructor stub
	}

	public Trogiup(String tAIKHOAN, String nOIDUNG) {
		//MATROGIUP = mATROGIUP;
		TAIKHOAN = tAIKHOAN;
		NOIDUNG = nOIDUNG;
	}
	
	public Trogiup(int mATROGIUP, String tAIKHOAN, String nOIDUNG) {
		MATROGIUP = mATROGIUP;
		TAIKHOAN = tAIKHOAN;
		NOIDUNG = nOIDUNG;
	}

	@Override
	public String toString() {
		return "Trogiup [MATROGIUP=" + MATROGIUP + ", TAIKHOAN=" + TAIKHOAN + ", NOIDUNG=" + NOIDUNG + "]";
	}

	public int getMATROGIUP() {
		return MATROGIUP;
	}

	public void setMATROGIUP(int mATROGIUP) {
		MATROGIUP = mATROGIUP;
	}

	public String getTAIKHOAN() {
		return TAIKHOAN;
	}

	public void setTAIKHOAN(String tAIKHOAN) {
		TAIKHOAN = tAIKHOAN;
	}

	public String getNOIDUNG() {
		return NOIDUNG;
	}

	public void setNOIDUNG(String nOIDUNG) {
		NOIDUNG = nOIDUNG;
	}
	
}
