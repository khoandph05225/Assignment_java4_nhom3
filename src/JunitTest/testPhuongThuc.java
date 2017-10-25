package JunitTest;

//import static org.junit.Assert.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.Test;

import hibernate.HibernateUtil;
import model.Category;
import model.Product;
import model.Trogiup;
import service.LoadCategory;
import model.Users;
import service.LoginDAO;
import service.ProductDAO;
import service.RegisterDAO;
import service.capnhapDAO;
import service.phanhoiDAO;
import hibernate.HibernateUtil;
public class testPhuongThuc {
	
	//@Test
	public void Loadcategory(){
		List<Category> list=new ArrayList<Category>();
		//Category category = new Category();
		Session session = HibernateUtil.openSession();
		Transaction tx = null; 
		try {
			tx=session.getTransaction();
			tx.begin();
			list = session.createQuery("from Category").list();
			tx.commit();
			System.out.println("try");
		} catch (Exception e) {
			if(tx != null) {
				System.out.println("2");
				tx.rollback();
			}else {
				e.printStackTrace();
			}
		}finally {
			session.close();
		}
		
		for(Category category:list) {
			System.out.println(category.getCategoryName()+"-"+category.getCategoryName());
		}
	}
	@Test
	public void LoadProduct(){
		List<Product> list=new ArrayList<Product>();
		Session session = HibernateUtil.openSession();
		Transaction tx = null; 
		try {
			tx=session.getTransaction();
			tx.begin();
			String loai="IP";
			String kieu=",";
			String hql="from Product P where P.DESCRIPTION like :kieu and P.CATEGORY_ID like:loai";
			Query query = session.createQuery(hql);
			query.setString("loai", "%"+loai+"%");
			query.setString("kieu", "%"+kieu+"%");
			list=query.list();
		} catch (Exception e) {
			if(tx != null) {
				//System.out.println("loi" +e);
				System.out.println("catch" +e);
			    tx.rollback();
		}else {
				System.out.println("trace");
				System.out.println(e);
			}
		}finally {
			session.close();
		}
		
		for(Product product:list) {
			System.out.println(product.getPRODUCT_NAME());
		}
	}
	
	//@Test
	public void testLoadLoaiSanPham(){
		LoadCategory load = new LoadCategory();
		List<Category>list=load.Loadcategory();
		System.out.println(list.toString());
		for (Category ds:list) {
			System.out.println("1");
            System.out.println(ds.getCategoryID()+"-"+ds.getCategoryName());
		}
	}
	//@Test
	public void testLogin() {
		LoginDAO a = new LoginDAO();
		boolean d = a.authenticateUser("thuyntt", "123");
		Users user = a.getUserByUserId("thuyntt");
		if(d==true) {
			System.out.println("login secucces with"+user.getTENND()+"-"+user.getIsQuanLy());
			
		}else {
			System.out.println("login fail");
		}
	}
	//@Test
	public void testGetLIST() {
		LoginDAO a = new LoginDAO();
		List<Users>list=a.getListOfUsers();
		for(Users u:list) {
			System.out.println(u.toString());
		}
	}
	//@Test
	public void testRegister() {
		Users user = new Users("hieutt2","123","Tran Trung Hieu","1-3-1997","Ha Nam","09797697");
		RegisterDAO register = new RegisterDAO();
		
		boolean d=register.register(user);
		if(d==true) {
			System.out.println(user.toString());
			System.out.println("secucces");
		}else {
			System.out.println("error");
	}
	}
	//@Test
	public void testUpdate() {
		Users user = new Users(5,"tampt","123","Pham Thi Tam","13-7-1998","Nam Dinh","07689786");
		capnhapDAO capnhap = new capnhapDAO();
		boolean a=capnhap.updateUser(user);
		if(a) {
			//Users e = (Users)session.getAttribute("user");
			System.out.println("succes");
		}else {
			System.out.println("fail");
		}
	}
	//@Test
	public void testProduct() {
		ProductDAO dao = new ProductDAO();
		List<Product> list = dao.getListOfProduct();
		for(Product a:list) {
			System.out.println(a.getPRODUCT_NAME());
		}
	}
	//@Test
	public void testTroGiup(){
		Session session = HibernateUtil.openSession();
		 //if(isUserExists(user)) return false;	
			Trogiup trogiup = new Trogiup("khoand","dddd");
		 Transaction tx = null;	
		 try {
			 tx = session.getTransaction();
			 tx.begin();
			 session.save(trogiup);
			 tx.commit();
		 } catch (Exception e) {
			 if (tx != null) {
				 tx.rollback();
			 }
			 System.out.println(e);
			 
		 } finally {
			 session.close();
		 }	
		 //return true;
	}
	//@Test
	public void PhanHoi() {
		List<Trogiup> list = new ArrayList<Trogiup>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Trogiup").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
      //  return list;
}
	Session session = HibernateUtil.openSession();
	 //if(isUserExists(user)) return false;	
	//@Test
	public void themProduct() {
	Product product = new Product("iphone 7","ihone 7 quoc te",8000,"IP","hungnv","img/6.png");
	 Transaction tx = null;	
	 try {
		 tx = session.getTransaction();
		 tx.begin();
		 session.save(product);
		 tx.commit();
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }	
	 //return true;
	}
}
