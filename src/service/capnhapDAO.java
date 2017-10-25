package service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Users;

public class capnhapDAO {
	public boolean updateUser(Users user) {
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        try {
			tx=session.getTransaction();
			tx.begin();
			session.update(user);
			tx.commit();
		} catch (Exception e) {
			if(tx!=null) {
				tx.rollback();
			}
		}finally {
			session.close();
		}
		return true;
	}
}
