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
import java.util.ArrayList;
import Beans.UsuariosBeans;
import Utils.ConexionDB;

/**
 *
 * @author richa
 */
@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario"})
public class ServletUsuario extends HttpServlet {

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
        String op = request.getParameter("op");

        if (op.equals("listar")) {
            try {
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from usuarios");
                ResultSet rs = sta.executeQuery();

                ArrayList<UsuariosBeans> lista = new ArrayList<UsuariosBeans>();

                while (rs.next()) {
                    UsuariosBeans em = new UsuariosBeans(rs.getInt(1), rs.getString(2),
                            rs.getString(3), rs.getString(4), rs.getString(5),
                            rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
                    lista.add(em);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("view/MostrarUsuario.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        } else if (op.equals("eliminar")) {
            try {
                String cod = request.getParameter("cod");
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("delete from usuarios where cod_usuarios=?");
                sta.setString(1, cod);
                sta.executeUpdate();
                request.getRequestDispatcher("ServletUsuario?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        } else if (op.equals("insertar")) {
            try {

                //int cod = Integer.parseInt(request.getParameter("txtCod"));
                String nombre = request.getParameter("txtNom");
                String nombreusu = request.getParameter("txtNomUsu");
                String dni = request.getParameter("txtDni");
                String pass = request.getParameter("txtPass");
                String apellido = request.getParameter("txtApellido");
                String correo = request.getParameter("txtCorreo");
                String tel = request.getParameter("txtTel");
                String tipo = request.getParameter("txtTipo");

   PreparedStatement sta = ConexionDB.getConexion().prepareStatement("insert into usuarios(nomusu, nombre,apellido,correo,dni,telefono,password,t_usuario,estado,enlinea,num_ingresos) values(?,?,?,?,?,?,?,?,1,0,0)");
              sta.setString(1, nombreusu);
                sta.setString(2, nombre);
                sta.setString(3, apellido);
                sta.setString(4, correo);
                sta.setString(5, dni);
                sta.setString(6, tel);
                sta.setString(7, pass);
                sta.setString(8, tipo);

                
                sta.executeUpdate();

                request.getRequestDispatcher("ServletUsuario?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }

        } else if (op.equals("editar")) {
         
            try {
                String cod = request.getParameter("txtCod");

                String nombre = request.getParameter("txtNom");
                String nombreusu = request.getParameter("txtNomUsu");
                String dni = request.getParameter("txtDni");
                String pass = request.getParameter("txtPass");
                String apellido = request.getParameter("txtApellido");
                String correo = request.getParameter("txtCorreo");
                String tel = request.getParameter("txtTel");
                String tipo = request.getParameter("txtTipo");
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("update usuarios set nomusu=?, nombre=?,apellido=?,correo=?,dni=?,telefono=?,password=?,t_usuario=? where cod_usuarios=?");
                sta.setString(1, nombreusu);
                sta.setString(2, nombre);
                sta.setString(3, apellido);
                sta.setString(4, correo);
                sta.setString(5, dni);
                sta.setString(6, tel);
                sta.setString(7, pass);
                sta.setString(8, tipo);
     ;
                sta.setString(9, cod);
                sta.executeUpdate();

                request.getRequestDispatcher("ServletUsuario?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        } else if (op.equals("consultarCod")) {
            try {
                String cod = request.getParameter("cod");

                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from usuarios where cod_usuarios=?");
                sta.setString(1, cod);
                ResultSet rs = sta.executeQuery();

                ArrayList<UsuariosBeans> lista = new ArrayList<UsuariosBeans>();

                while (rs.next()) {
                    UsuariosBeans em = new UsuariosBeans(rs.getInt(1), rs.getString(2),
                            rs.getString(3), rs.getString(4), rs.getString(5),
                            rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
                    lista.add(em);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("view/EditarUsuario.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }

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
