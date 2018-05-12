/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Util.HibernateUtil;
import entities.MemberAccount;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

/**
 *
 * @author Bach
 */
public class MemberAccountModel {
    private final SessionFactory sf = new HibernateUtil().getSessionFactory();

   public List<MemberAccount> ListMember() {

        try {
            sf.getCurrentSession().beginTransaction();
            List<MemberAccount> result = sf.getCurrentSession().createCriteria(MemberAccount.class).list();

            return result;
        } catch (Exception e) {
            return null;
        } finally {
            sf.getCurrentSession().close();
        }
    }
   
   public MemberAccount GetID(Integer matk) {
        try {
            sf.getCurrentSession().beginTransaction();
            return (MemberAccount) sf.getCurrentSession().get(MemberAccount.class, matk);
        } catch (Exception e) {
            return null;
        } finally {
            sf.getCurrentSession().close();
        }
    }

    public boolean Delete(MemberAccount tk) {

        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().delete(tk);
            sf.getCurrentSession().getTransaction().commit();

            return true;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        } finally {
            sf.getCurrentSession().close();
        }
    }
    //Dung de dung Dang ky thanh vien
     public boolean Add(MemberAccount food) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(food);
            sf.getCurrentSession().getTransaction().commit();

            return true;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        } finally {
            sf.getCurrentSession().close();
        }

    }
    //Tao ID khi them thanh vien moi
    public long Count() {
      
        long count;
        try {
            sf.getCurrentSession().beginTransaction();
            try {
                Query query = sf.getCurrentSession().createQuery("select count(*) from MemberAccount");
                count = (long) query.uniqueResult();
                return count;
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
