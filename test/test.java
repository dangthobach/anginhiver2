
import Util.HibernateUtil;
import entities.Food;
import model.FoodModel;
import org.hibernate.SessionFactory;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Bach
 */
public class test {
    public static void main(String[] args) {
      SessionFactory sf = new HibernateUtil().getSessionFactory();
      
      Food food= new FoodModel().getID(10024);
        System.out.println(food.getFoodVName()+"\n"+food.getFoodEName());
        
        try {
        sf.getCurrentSession().beginTransaction();
        sf.getCurrentSession().load(Food.class, food.getFoodId());
       
        food.setFoodVName("aaaaaaaaaaaa");
        food.setFoodEName("abcdaaaaaaaa");
        sf.getCurrentSession().update(food);
        sf.getCurrentSession().getTransaction().commit();
         System.out.println(food.getFoodVName()+"\n"+food.getFoodEName());
         
        } catch(Exception e){
        sf.getCurrentSession().getTransaction().rollback();
        
        }
        finally {
        sf.getCurrentSession().close();
        }
    }
   
}
