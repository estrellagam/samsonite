/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ProductosBeans;
import Beans.UsuariosBeans;
import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

import Utils.ConexionDB;

/**
 *
 * @author Estrella
 */
@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto"})
public class ServletProducto extends HttpServlet {

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
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from productos");
                ResultSet rs = sta.executeQuery();

                ArrayList<ProductosBeans> lista = new ArrayList<ProductosBeans>();

                while (rs.next()) {
                    ProductosBeans em = new ProductosBeans(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getInt(4), rs.getString(5),
                            rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9),
                            rs.getString(10), rs.getString(11), rs.getString(12));
                    lista.add(em);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("view/MostrarProducto.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }

        } else if (op.equals("eliminar")) {
            try {
                String cod = request.getParameter("cod");
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("delete from productos where id_productos=?");
                sta.setString(1, cod);
                sta.executeUpdate();
                request.getRequestDispatcher("ServletProducto?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        } else if (op.equals("insertar")) {
            try {

                int idPro = Integer.parseInt(request.getParameter("txtCodProd"));
                String nombre = request.getParameter("txtNom");
                int codMarca = Integer.parseInt(request.getParameter("txtCodM"));
                int codProve = Integer.parseInt(request.getParameter("txtCodProv"));
                String modelo = request.getParameter("txtModel");
                int stock = Integer.parseInt(request.getParameter("txtStock"));
                Double precioF = Double.parseDouble(request.getParameter("txtPrecioF"));
                Double descuento = Double.parseDouble(request.getParameter("txtDesc"));
                Double precioV = Double.parseDouble(request.getParameter("txtPrecioV"));
                String unidadT = request.getParameter("txtU");
                String tiempoG = request.getParameter("txtTG");
                String fechaIn = request.getParameter("txtFecha");

               
                PreparedStatement sta = ConexionDB.getConexion().
                        prepareStatement("insert into productos values(?,?,?,?,?,?,?,?,?,?,?,?)");
                
                sta.setInt(1, idPro);
                sta.setString(2, nombre);
                sta.setInt(3, codMarca);
                sta.setInt(4, codProve);
                sta.setString(5, modelo);
                sta.setInt(6, stock);
                sta.setDouble(7, precioF);
                sta.setDouble(8, descuento);
                sta.setDouble(9, precioV);
                sta.setString(10, unidadT);
                sta.setString(11, tiempoG);
                sta.setString(12, fechaIn);
                
                sta.executeUpdate();

                request.getRequestDispatcher("ServletProducto?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }

        
        } else if (op.equals("editar")) {
          try {
                int idPro = Integer.parseInt(request.getParameter("txtCodProd"));
                String nombre = request.getParameter("txtNom");
                int codMarca = Integer.parseInt(request.getParameter("txtCodM"));
                int codProve = Integer.parseInt(request.getParameter("txtCodProv"));
                String modelo = request.getParameter("txtModel");
                int stock = Integer.parseInt(request.getParameter("txtStock"));
                Double precioF = Double.parseDouble(request.getParameter("txtPrecioF"));
                Double descuento = Double.parseDouble(request.getParameter("txtDesc"));
                Double precioV = Double.parseDouble(request.getParameter("txtPrecioV"));
                String unidadT = request.getParameter("txtU");
                String tiempoG = request.getParameter("txtTG");
                String fechaIn = request.getParameter("txtFecha");

                PreparedStatement sta = ConexionDB.getConexion().
                        prepareStatement("update productos set nombre=?,cod_marca=?,cod_proveedor=?,modelo=?,stock=?,precio_f=?,descuento=?,precio_v=?,unidad_t=?,tiempo_g=?,fecha_ingreso=? where id_productos=?");
       
                sta.setString(1, nombre);
                sta.setInt(2, codMarca);
                sta.setInt(3, codProve);
                sta.setString(4, modelo);
                sta.setInt(5, stock);
                sta.setDouble(6, precioF);
                sta.setDouble(7, descuento);
                sta.setDouble(8, precioV);
                sta.setString(9, unidadT);
                sta.setString(10, tiempoG);
                sta.setString(11, fechaIn);
                sta.setInt(12, idPro);
                sta.executeUpdate();
          

                request.getRequestDispatcher("ServletProducto?op=listar").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        } else if (op.equals("consultarCod")) {
              try {
                    String cod = request.getParameter("cod");
              
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from productos where id_productos=?");
              sta.setString(1, cod);
                ResultSet rs = sta.executeQuery();

                ArrayList<ProductosBeans> lista = new ArrayList<ProductosBeans>();

                while (rs.next()) {
                              ProductosBeans em = new ProductosBeans(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getInt(4), rs.getString(5),
                            rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9),
                            rs.getString(10), rs.getString(11), rs.getString(12));
                    lista.add(em);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("view/EditarProducto.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }} else if(op.equals("reporte")){
                  try {
                      String fechaI = request.getParameter("txtInicio");
                      String fechaF = request.getParameter("txtFinal");
                PreparedStatement sta = ConexionDB.getConexion().
                        prepareStatement("SELECT * FROM productos WHERE fecha_ingreso BETWEEN =? AND =?");
                sta.setString(1, fechaI);
                sta.setString(2, fechaF);
                ResultSet rs = sta.executeQuery();

                ArrayList<ProductosBeans> lista = new ArrayList<ProductosBeans>();

                while (rs.next()) {
                    ProductosBeans em = new ProductosBeans(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getInt(4), rs.getString(5),
                            rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9),
                            rs.getString(10), rs.getString(11), rs.getString(12));
                    lista.add(em);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("view/Reporte.jsp").forward(request, response);
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
