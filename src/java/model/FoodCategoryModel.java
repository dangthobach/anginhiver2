/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Util.HibernateUtil;
import entities.FoodCategory;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Bach
 */
public class FoodCategoryModel {
     private final SessionFactory sf = new HibernateUtil().getSessionFactory();
    
    public List<FoodCategory> CategoryList(){
       try{
        sf.getCurrentSession().beginTransaction();
    List<FoodCategory> result= sf.getCurrentSession().createCriteria(FoodCategory.class).list();
    return result;
    }
    catch(Exception e){
    return null;
    }
       finally {
       sf.getCurrentSession().close();
       }
    }  
}
