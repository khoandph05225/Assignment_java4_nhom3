package service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Category;

public class LoadCategory {
	public List<Category> Loadcategory(){
		List<Category> list=new ArrayList<Category>();
		//Category category = new Category();
		Session session = HibernateUtil.openSession();
		Transaction tx = null; 
		try {
			tx=session.getTransaction();
			tx.begin();
			list = session.createQuery("from Category").list();
			tx.commit();
		} catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}else {
				e.printStackTrace();
			}
		}finally {
			session.close();
		}
		return list;
	}
}
