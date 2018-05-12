/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Util.HibernateUtil;
import entities.Food;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

/**
 *
 * @author Bach
 */
public class FoodModel {
    private final SessionFactory sf = new HibernateUtil().getSessionFactory();
    
     public List<Food> ListFood() {
       try {
            sf.getCurrentSession().beginTransaction();
            List<Food> result = sf.getCurrentSession().createCriteria(Food.class).list();

            return result;
        } catch (Exception e) {
            return null;
        } finally {
            sf.getCurrentSession().close();
        }
    }
     
    
    public boolean Delete(Food food) {
     try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().delete(food);
            sf.getCurrentSession().getTransaction().commit();

            return true;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        } finally {
            sf.getCurrentSession().close();
        }
    }
    
    public boolean Add(Food food){
    try{
        sf.getCurrentSession().beginTransaction();
        sf.getCurrentSession().saveOrUpdate(food);
        sf.getCurrentSession().getTransaction().commit();
      return true;
    }
    catch (Exception e){
    sf.getCurrentSession().getTransaction().rollback();
    return false;
    }
    finally{
    sf.getCurrentSession().close();
    }
    }
     public long Count(int categoryid){
      long count;
        try {
            sf.getCurrentSession().beginTransaction();
            try {
                Query query = sf.getCurrentSession().createQuery("select count(*) from Food where foodCategoryId ="+categoryid);
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
     
      public Food getID(Integer matp) {
        try {
            sf.getCurrentSession().beginTransaction();
            return (Food) sf.getCurrentSession().get(Food.class, matp);
        } catch (Exception e) {
            return null;
        }
        
         finally {
        sf.getCurrentSession().close();
        }
    }
     
      
}
