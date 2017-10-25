package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(name="ID")
	private int MA;
	@Column(name="TAIKHOAN")
	private String TAIKHOAN;
	@Column(name="MATKHAU")
	private String MATKHAU;
	@Column(name="TENND")
	private String TENND;
	@Column(name="NGAYSINH")
	private String NGAYSINH;
	@Column(name="DIACHI")
	private String DIACHI;
	@Column(name="DIENThOAI")
	private String DIENThOAI;
	@Column(name="isQuanLy")
	private boolean isQuanLy;
	public Users() {
	}

public Users( String tAIKHOAN, String mATKHAU, String tENND, String nGAYSINH, String dIACHI,
			String dIENThOAI) {
		//super();
		//MA = mA;
		TAIKHOAN = tAIKHOAN;
		MATKHAU = mATKHAU;
		TENND = tENND;
		NGAYSINH = nGAYSINH;
		DIACHI = dIACHI;
		DIENThOAI = dIENThOAI;
		this.isQuanLy = false;
	}

	

public Users(int mA, String tAIKHOAN, String mATKHAU, String tENND, String nGAYSINH, String dIACHI, String dIENThOAI) {
	MA = mA;
	TAIKHOAN = tAIKHOAN;
	MATKHAU = mATKHAU;
	TENND = tENND;
	NGAYSINH = nGAYSINH;
	DIACHI = dIACHI;
	DIENThOAI = dIENThOAI;
	this.isQuanLy = false;
}

public int getMA() {
	return MA;
}

@Override
public String toString() {
	return "Users [MA=" + MA + ", TAIKHOAN=" + TAIKHOAN + ", MATKHAU=" + MATKHAU + ", TENND=" + TENND + ", NGAYSINH="
			+ NGAYSINH + ", DIACHI=" + DIACHI + ", DIENThOAI=" + DIENThOAI + ", isQuanLy=" + isQuanLy + "]";
}



public void setMA(int mA) {
	MA = mA;
}



	//	public String getMAND() {
//		return MAND;
//	}
//	public void setMAND(String mAND) {
//		MAND = mAND;
//	}
	public String getTAIKHOAN() {
		return TAIKHOAN;
	}
	public void setTAIKHOAN(String tAIKHOAN) {
		TAIKHOAN = tAIKHOAN;
	}
	public String getMATKHAU() {
		return MATKHAU;
	}
	public void setMATKHAU(String mATKHAU) {
		MATKHAU = mATKHAU;
	}
	public String getTENND() {
		return TENND;
	}
	public void setTENND(String tENND) {
		TENND = tENND;
	}
	public String getNGAYSINH() {
		return NGAYSINH;
	}
	public void setNGAYSINH(String nGAYSINH) {
		NGAYSINH = nGAYSINH;
	}
	public String getDIACHI() {
		return DIACHI;
	}
	public void setDIACHI(String dIACHI) {
		DIACHI = dIACHI;
	}
	public String getDIENThOAI() {
		return DIENThOAI;
	}
	public void setDIENThOAI(String dIENThOAI) {
		DIENThOAI = dIENThOAI;
	}
	public boolean getIsQuanLy() {
		return isQuanLy;
	}
	public void setIsQuanLy(boolean isQuanLy) {
		this.isQuanLy = isQuanLy;
	}
	

}