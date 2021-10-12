/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;
import Beans.UsuariosBeans;
import Utils.ConexionDB;
import javax.servlet.http.HttpSession;
/**
 *
 * @author richa
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {
        int timer = 0;


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
        HttpSession sesionOk = request.getSession();
        try {

            PreparedStatement psta = ConexionDB.getConexion().prepareStatement("update usuarios set enlinea=0 where cod_usuarios=?");
            psta.setString(1, request.getParameter("cod"));
            psta.executeUpdate();
            sesionOk.invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
        }
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
        
        String correo = request.getParameter("txtCorreo");
        String pass= request.getParameter("txtPass");
        try {
            PreparedStatement psta = ConexionDB.getConexion().prepareStatement("select * from usuarios where correo=?"); //consulta
                    psta.setString(1, correo); // agregar parametros
                    ResultSet rs= psta.executeQuery(); //ejecutamos y lo almacenamos en el resultSet
           if(rs.next()){ 
                   //Hay resultados en el rs
                  
                if (rs.getString("estado").equals("0")) {
                            request.setAttribute("Error", "Maximo numero de intentos cuenta bloqueada, comuniquese con el Administrador");
                              request.getRequestDispatcher("index.jsp").forward(request, response);

                } else {
                    if (rs.getString("password").equals(pass)) {
                        //Credenciales validas
                        PreparedStatement ps = ConexionDB.getConexion().prepareStatement("update usuarios set num_ingresos=?, enlinea=1 where cod_usuarios=?");

                        ps.setInt(1, rs.getInt("num_ingresos") + 1);                 
                        ps.setInt(2, rs.getInt("cod_usuarios"));         
                        ps.executeUpdate();
                       
                        HttpSession sesionOk = request.getSession(); //iniciar la sesión
                        sesionOk.setAttribute("cod_usuarios", rs.getString(1).toString()); // 
                        sesionOk.setAttribute("usuario", rs.getString(2).toString()); //                 
                        sesionOk.setAttribute("t_usuario", rs.getString(9).toString()); 
                        System.out.println(rs.getString(1).toString());
               request.getRequestDispatcher("principal.jsp").forward(request, response);  //redirigir a la pagina(a la pagina principal)
   
                    } else {
                        timer++;
                        if (timer >= 3) {
                            timer = 0;
                            PreparedStatement ps = ConexionDB.getConexion().prepareStatement("update usuarios set estado=0 where cod_usuarios=?");
                            ps.setString(1, rs.getString("cod_usuarios"));
                            ps.executeUpdate();
                            request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                        } else {
                            request.setAttribute("Error", "Contraseña incorrecta");
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                        }
                    }
                }
                
            }else{
                request.setAttribute("Error", "Correo electrónico incorrecto");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            
        }
        
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
