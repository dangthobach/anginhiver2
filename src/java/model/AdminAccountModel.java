/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Util.HibernateUtil;
import entities.AdminAccount;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

/**
 *
 * @author Bach
 */
public class AdminAccountModel {
     private final SessionFactory sf = new HibernateUtil().getSessionFactory();
      
      public AdminAccount login(String username, String password){
       try {
            sf.getCurrentSession().beginTransaction();
            try {
                Query query = sf.getCurrentSession().createQuery("from AdminAccount where adminLoginName=:username and adminPassword=:password");
                query.setParameter("username", username);
                query.setParameter("password", password);
               AdminAccount admin= (AdminAccount)query.uniqueResult();
               sf.getCurrentSession().getTransaction().commit();
               
               return admin;
        
            } catch (Exception e) {
                sf.getCurrentSession().getTransaction().rollback();
                throw e;    
            }
        } catch (Exception e) {
       
            throw e;
        } finally {
            sf.getCurrentSession().close();
        }
      
    
      }
}
