package service;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Users;

public class LoginDAO {
	//solo sánh username và password với đối tượng user đã được ánh xạ từ database phía dưới
    public boolean authenticateUser(String username, String password) {
        Users user = getUserByUserId(username);          
        if(user!=null && user.getTAIKHOAN().equals(username)&& user.getMATKHAU().equals(password)){
            return true;
        }else{ 
            return false;
        }
    }
    //lay thong tin cua nguoi co tai khoản này ánh xạ thông tin người đó vào đối tượng user để so sánh với username và password nhập từ website
    public Users getUserByUserId(String username) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Users user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Users where TAIKHOAN='"+username+"'");
            user = (Users)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
    
    public List<Users> getListOfUsers(){
        List<Users> list = new ArrayList<Users>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Users").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
}
