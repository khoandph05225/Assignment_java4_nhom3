package service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Product;

public class ProductDAO {
	public List<Product> loadProduct(String chialoai,String chiahang){
		List<Product> list=new ArrayList<Product>();
		Session session = HibernateUtil.openSession();
		Transaction tx = null; 
		try {
			tx=session.getTransaction();
			tx.begin();
			String loai=chialoai;
			String kieu=chiahang;
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
		
        return list;
    }
	public List<Product> loadIP_hang2(){
		List<Product> list=new ArrayList<Product>();
		Session session = HibernateUtil.openSession();
		Transaction tx = null; 
		try {
			tx=session.getTransaction();
			tx.begin();
			String loai="IP";
			String kieu="lực,,";
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
		
        return list;
    }
//	public void addProduct(Product product) {
//		 Transaction tx = null;	
//		 try {
//			 tx = session.getTransaction();
//			 tx.begin();
//			 session.save(product);
//			 tx.commit();
//		 } catch (Exception e) {
//			 if (tx != null) {
//				 tx.rollback();
//			 }
//			 e.printStackTrace();
//		 } finally {
//			 session.close();
//		 }
//	}
}
