/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Util.HibernateUtil;
import entities.Food;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.FoodModel;
import org.hibernate.SessionFactory;

/**
 *
 * @author Bach
 */
public class UpdateFoodServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            SessionFactory sf = new HibernateUtil().getSessionFactory();

            Food food = (Food) request.getAttribute("ChosenFood");
            request.removeAttribute("ChosenFood");

            try {
                sf.getCurrentSession().beginTransaction();
               // sf.getCurrentSession().load(Food.class, food.getFoodId());
               // food.setFoodCategoryId(Integer.parseInt(request.getParameter("category")));
                food.setFoodVName(request.getParameter("foodVName"));
               food.setFoodEName(request.getParameter("foodEName"));
                food.setFoodImage(request.getParameter("foodImage"));
                food.setWater(request.getParameter("water"));
                food.setEnergy(request.getParameter("energy"));
                food.setProtein(request.getParameter("protein"));
                food.setLipid(request.getParameter("lipid"));
                food.setCarbohydrate(request.getParameter("carbohydrate"));
                food.setCelluloza(request.getParameter("celluloza"));
                food.setTro(request.getParameter("tro"));
                food.setTotalSugar(request.getParameter("totalSugar"));
                food.setGalactoza(request.getParameter("galactoza"));
                food.setMaltoza(request.getParameter("maltoza"));
                food.setLactoza(request.getParameter("lactoza"));
                food.setFructoza(request.getParameter("fructoza"));
                food.setGlucoza(request.getParameter("glucoza"));
                food.setSacaroza(request.getParameter("sacaroza"));
                food.setCalcium(request.getParameter("calcium"));
                food.setIron(request.getParameter("iron"));
                food.setMagnesium(request.getParameter("magnesium"));
                food.setManganese(request.getParameter("manganese"));
                food.setPotassium(request.getParameter("potassium"));
                food.setPhosphorous(request.getParameter("phosphorous"));
                food.setSodium(request.getParameter("sodium"));
                food.setZinc(request.getParameter("zinc"));
                food.setCopper(request.getParameter("copper"));
                food.setSelenium(request.getParameter("selenium"));
                food.setVitaminC(request.getParameter("vitaminC"));
                food.setVitaminB1(request.getParameter("vitaminB1"));
                food.setVitaminB2(request.getParameter("vitaminB2"));
                food.setVitaminPp(request.getParameter("vitaminPp"));
                food.setVitaminB5(request.getParameter("vitaminB5"));
                food.setVitaminB6(request.getParameter("vitaminB6"));
                food.setFolat(request.getParameter("folat"));
                food.setVitaminB9(request.getParameter("vitaminB9"));
                food.setVitaminH(request.getParameter("vitaminH"));
                food.setVitaminB12(request.getParameter("vitaminB12"));
                food.setVitaminA(request.getParameter("vitaminA"));
                food.setVitaminD(request.getParameter("vitaminD"));
                food.setVitaminE(request.getParameter("vitaminE"));
                food.setVitaminK(request.getParameter("vitaminK"));
                food.setBetaCaroten(request.getParameter("betaCaroten"));
                food.setAlphaCaroten(request.getParameter("alphaCaroten"));
                food.setBetaCryptoxanthin(request.getParameter("betaCryptoxanthin"));
                food.setLycopen(request.getParameter("lycopen"));
                food.setLutein(request.getParameter("lutein"));
                food.setPurin(request.getParameter("purin"));
                food.setTotalIsoflavone(request.getParameter("totalIsoflavone"));
                food.setDaidzein(request.getParameter("daidzein"));
                food.setGenistein(request.getParameter("genistein"));
                food.setGlycetin(request.getParameter("glycetin"));
                food.setTotalSFAcid(request.getParameter("totalSFAcid"));
                food.setPalmitic(request.getParameter("palmitic"));
                food.setMargaric(request.getParameter("margaric"));
                food.setStearic(request.getParameter("stearic"));
                food.setArachidic(request.getParameter("arachidic"));
                food.setBehenic(request.getParameter("behenic"));
                food.setLignoceric(request.getParameter("lignoceric"));
                food.setTotalMFAcid(request.getParameter("totalMFAcid"));
                food.setMyristoleic(request.getParameter("myristoleic"));
                food.setPalmitoleic(request.getParameter("palmitoleic"));
                food.setOleic(request.getParameter("oleic"));
                food.setTotalPFAcid(request.getParameter("totalPFAcid"));
                food.setLinoleic(request.getParameter("linoleic"));
                food.setLinolenic(request.getParameter("linolenic"));
                food.setArachidonic(request.getParameter("arachidonic"));
                food.setEicosapentaenoic(request.getParameter("eicosapentaenoic"));
                food.setDocosahexaenoic(request.getParameter("docosahexaenoic"));
                food.setTotalTFAcid(request.getParameter("totalTFAcid"));
                food.setCholesterol(request.getParameter("cholesterol"));
                food.setPhytosterol(request.getParameter("phytosterol"));
                food.setLysin(request.getParameter("lysin"));
                food.setMethionin(request.getParameter("methionin"));
                food.setTryptophan(request.getParameter("tryptophan"));
                food.setPhenylalanin(request.getParameter("phenylalanin"));
                food.setThreonin(request.getParameter("threonin"));
                food.setValin(request.getParameter("valin"));
                food.setLeucin(request.getParameter("leucin"));
                food.setIsoleucin(request.getParameter("isoleucin"));
                food.setArginin(request.getParameter("arginin"));
                food.setHistidin(request.getParameter("histidin"));
                food.setCystin(request.getParameter("cystin"));
                food.setTyrosin(request.getParameter("tyrosin"));
                food.setAlanin(request.getParameter("alanin"));
                food.setAcidAspartic(request.getParameter("acidAspartic"));
                food.setAcidGlutamic(request.getParameter("acidGlutamic"));
                food.setGlycin(request.getParameter("glycin"));
                food.setProlin(request.getParameter("prolin"));
                food.setSerin(request.getParameter("serin"));
                food.setFoodUses(request.getParameter("foodUses"));
                food.setSugar(request.getParameter("sugar"));
                food.setLypcogen(request.getParameter("lypcogen"));
                

                sf.getCurrentSession().update(food);
                sf.getCurrentSession().getTransaction().commit();
                

            } catch (Exception e) {
                sf.getCurrentSession().getTransaction().rollback();

            } finally {
                sf.getCurrentSession().close();
                response.sendRedirect("Admin/food.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
