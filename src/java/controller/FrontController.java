/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.EditProfile;
import models.ErrorMessage;
import models.Login;
import models.Registration;
import models.User;

/**
 *
 * @author mujeeb
 */
@MultipartConfig
public class FrontController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            try{
                String cp=request.getContextPath();
                String sp=request.getServletPath();
                String pi=request.getPathInfo();
                if(pi.equals("/index.jsp")){
                        String path="http://localhost:8080"+cp+pi;
                        response.sendRedirect(path);       
                }else if(pi.equals("/Registration")){
                        Registration obj=(Registration)Class.forName("models."+pi.substring(1)).newInstance();
                        String res=obj.businessLogic(request);
                            out.println(res);
                }else if(pi.equals("/Login")){    
                        Login obj=(Login)Class.forName("models."+pi.substring(1)).newInstance();
                        User res=obj.businessLogic1(request);
                        if(res!=null){
                            HttpSession s=request.getSession();
                            s.setAttribute("currentUser", res);
                            pi="/Login";
                        }else{
                            ErrorMessage m=new ErrorMessage("Invalid Details ! try with another","error","alert-danger");
                            HttpSession s=request.getSession();
                            s.setAttribute("msg", m);
                            pi="/LoginPage";
                        }
                }else if(pi.equals("/Logout")){
                        HttpSession s=request.getSession();
                        s.removeAttribute("currentUser");
                        ErrorMessage m=new ErrorMessage("Logout Successfully","success","alert-success");
                        s.setAttribute("msg", m);
                        pi="/LoginPage";
                }else if(pi.equals("/EditProfile")){
                        EditProfile obj=(EditProfile)Class.forName("models."+pi.substring(1)).newInstance();
                        String res=obj.businessLogic(request);
                        //out.println(res);
                        pi="/Login";
                }
                FileReader reader = new FileReader("/home/mujeeb/NetBeansProjects/DigitalPocket/src/java/models/LocationProperties.properties");
                Properties p = new Properties();
                p.load(reader);
                String pt=p.getProperty(pi.substring(1));
                String viewpath=pt;
                request.getRequestDispatcher(viewpath).forward(request, response);
                
            }catch(Exception ee){
                ee.printStackTrace();
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
