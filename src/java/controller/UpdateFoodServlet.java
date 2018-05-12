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
                food.setFoodVName(request.getParameter("foodVName_new"));
               food.setFoodEName(request.getParameter("foodEName_new"));
                food.setFoodImage(request.getParameter("foodImage_new"));
                food.setWater(request.getParameter("water_new"));
                food.setEnergy(request.getParameter("energy_new"));
                food.setProtein(request.getParameter("protein_new"));
                food.setLipid(request.getParameter("lipid_new"));
                food.setCarbohydrate(request.getParameter("carbohydrate_new"));
                food.setCelluloza(request.getParameter("celluloza_new"));
                food.setTro(request.getParameter("tro_new"));
                food.setTotalSugar(request.getParameter("totalSugar_new"));
                food.setGalactoza(request.getParameter("galactoza_new"));
                food.setMaltoza(request.getParameter("maltoza_new"));
                food.setLactoza(request.getParameter("lactoza_new"));
                food.setFructoza(request.getParameter("fructoza_new"));
                food.setGlucoza(request.getParameter("glucoza_new"));
                food.setSacaroza(request.getParameter("sacaroza_new"));
                food.setCalcium(request.getParameter("calcium_new"));
                food.setIron(request.getParameter("iron_new"));
                food.setMagnesium(request.getParameter("magnesium_new"));
                food.setManganese(request.getParameter("manganese_new"));
                food.setPotassium(request.getParameter("potassium_new"));
                food.setPhosphorous(request.getParameter("phosphorous_new"));
                food.setSodium(request.getParameter("sodium_new"));
                food.setZinc(request.getParameter("zinc_new"));
                food.setCopper(request.getParameter("copper_new"));
                food.setSelenium(request.getParameter("selenium_new"));
                food.setVitaminC(request.getParameter("vitaminC_new"));
                food.setVitaminB1(request.getParameter("vitaminB1_new"));
                food.setVitaminB2(request.getParameter("vitaminB2_new"));
                food.setVitaminPp(request.getParameter("vitaminPp_new"));
                food.setVitaminB5(request.getParameter("vitaminB5_new"));
                food.setVitaminB6(request.getParameter("vitaminB6_new"));
                food.setFolat(request.getParameter("folat_new"));
                food.setVitaminB9(request.getParameter("vitaminB9_new"));
                food.setVitaminH(request.getParameter("vitaminH_new"));
                food.setVitaminB12(request.getParameter("vitaminB12_new"));
                food.setVitaminA(request.getParameter("vitaminA_new"));
                food.setVitaminD(request.getParameter("vitaminD_new"));
                food.setVitaminE(request.getParameter("vitaminE_new"));
                food.setVitaminK(request.getParameter("vitaminK_new"));
                food.setBetaCaroten(request.getParameter("betaCaroten_new"));
                food.setAlphaCaroten(request.getParameter("alphaCaroten_new"));
                food.setBetaCryptoxanthin(request.getParameter("betaCryptoxanthin_new"));
                food.setLycopen(request.getParameter("lycopen_new"));
                food.setLutein(request.getParameter("lutein_new"));
                food.setPurin(request.getParameter("purin_new"));
                food.setTotalIsoflavone(request.getParameter("totalIsoflavone_new"));
                food.setDaidzein(request.getParameter("daidzein_new"));
                food.setGenistein(request.getParameter("genistein_new"));
                food.setGlycetin(request.getParameter("glycetin_new"));
                food.setTotalSFAcid(request.getParameter("totalSFAcid_new"));
                food.setPalmitic(request.getParameter("palmitic_new"));
                food.setMargaric(request.getParameter("margaric_new"));
                food.setStearic(request.getParameter("stearic_new"));
                food.setArachidic(request.getParameter("arachidic_new"));
                food.setBehenic(request.getParameter("behenic_new"));
                food.setLignoceric(request.getParameter("lignoceric_new"));
                food.setTotalMFAcid(request.getParameter("totalMFAcid_new"));
                food.setMyristoleic(request.getParameter("myristoleic_new"));
                food.setPalmitoleic(request.getParameter("palmitoleic_new"));
                food.setOleic(request.getParameter("oleic_new"));
                food.setTotalPFAcid(request.getParameter("totalPFAcid_new"));
                food.setLinoleic(request.getParameter("linoleic_new"));
                food.setLinolenic(request.getParameter("linolenic_new"));
                food.setArachidonic(request.getParameter("arachidonic_new"));
                food.setEicosapentaenoic(request.getParameter("eicosapentaenoic_new"));
                food.setDocosahexaenoic(request.getParameter("docosahexaenoic_new"));
                food.setTotalTFAcid(request.getParameter("totalTFAcid_new"));
                food.setCholesterol(request.getParameter("cholesterol_new"));
                food.setPhytosterol(request.getParameter("phytosterol_new"));
                food.setLysin(request.getParameter("lysin_new"));
                food.setMethionin(request.getParameter("methionin_new"));
                food.setTryptophan(request.getParameter("tryptophan_new"));
                food.setPhenylalanin(request.getParameter("phenylalanin_new"));
                food.setThreonin(request.getParameter("threonin_new"));
                food.setValin(request.getParameter("valin_new"));
                food.setLeucin(request.getParameter("leucin_new"));
                food.setIsoleucin(request.getParameter("isoleucin_new"));
                food.setArginin(request.getParameter("arginin_new"));
                food.setHistidin(request.getParameter("histidin_new"));
                food.setCystin(request.getParameter("cystin_new"));
                food.setTyrosin(request.getParameter("tyrosin_new"));
                food.setAlanin(request.getParameter("alanin_new"));
                food.setAcidAspartic(request.getParameter("acidAspartic_new"));
                food.setAcidGlutamic(request.getParameter("acidGlutamic_new"));
                food.setGlycin(request.getParameter("glycin_new"));
                food.setProlin(request.getParameter("prolin_new"));
                food.setSerin(request.getParameter("serin_new"));
                food.setFoodUses(request.getParameter("foodUses_new"));
                food.setSugar(request.getParameter("sugar_new"));
                food.setLypcogen(request.getParameter("lypcogen_new"));
                

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
