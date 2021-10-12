package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.SimpleDateFormat;
import Beans.ProductosBeans;
import java.io.*;
import java.net.*;
import java.sql.*;

public final class Reporte_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/view/../includes/sesion.jsp");
    _jspx_dependants.add("/includes/header.jsp");
    _jspx_dependants.add("/view/ListadoProductoReporte.jsp");
    _jspx_dependants.add("/includes/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    ");
 double total = 0;
        int num = 0;
        double venta = 0;
    
      out.write("\n");
      out.write("    ");

    String nombre="";
    String t_usuario="";
    HttpSession sesionOK=request.getSession(); //todo los valores que estas ingresando
    nombre=(String)sesionOK.getAttribute("nombre");
    t_usuario=(String)sesionOK.getAttribute("t_usuario");
    
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write(" \n");
      out.write("    <link rel=\"icon\" href=\"Imagenes/logo5.ico\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"Css/nav.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        \n");
      out.write("        ");
      out.write("<link rel=\"stylesheet\" href=\"../Css/nav.css\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js \"></script>\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" >\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css\" />\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Roboto&display=swap\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Khand:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("<link rel=\"icon\" href=\"../Imagenes/logo5.ico\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </header>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        \n");
      out.write("        <div class=\"row min-vh-100 flex-column flex-md-row\">\n");
      out.write("            <aside class=\"col-12 col-md-3 col-xl-2 p-0  shadow-lg\">\n");
      out.write("                <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->\n");
      out.write("                    <nav class=\"navbar navbar-dark navbar-expand-md navbar bd-dark flex-md-column flex-row align-items-center  text-center sticky-top \" id=\"sidebar\">\n");
      out.write("                        <div class=\"text-center center\">\n");
      out.write("                            <img src=\"../Imagenes/logo5.jpg\" class=\"rounded-circle \" alt=\"logo\" width=\"54\" height=\"44\">\n");
      out.write("                        </div>\n");
      out.write("                        <p class=\"text-center\">SAMSONITE <br> </p>\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggler border-0 order-1\" data-bs-toggle=\"collapse\" data-bs-target=\"#navi\" aria-controls=\"nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"navbar-toggler-icon \n");
      out.write("                                  \"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse order-last  \" id=\"navi\">\n");
      out.write("                            <ul class=\"navbar-nav flex-column w-100 col-xl-2  \">\n");
      out.write("                                <li class=\"nav-item  \" style=\"padding-left: 15px\">\n");
      out.write("                                    <strong> <a class=\"nav-link active \"><i class=\"fa fa-user \"></i> BIENVENIDO <div class=\"px-4\">");
      out.print(nombre);
      out.write("</div></a></strong>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item  \" style=\"padding-left: 15px\">\n");
      out.write("                                    <a href=\"../index.jsp\" class=\"nav-link \"><i class=\"fas fa-house-user\"></i> HOME</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <button class=\"dropdown-btn\"><a href=\"#\" class=\"nav-link\"><i class=\"fas fa-boxes\"></i>\n");
      out.write("                                            Productos<i class=\"fa fa-caret-down\"></i></a></button>\n");
      out.write("                                    <div class=\"dropdown-container\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"AgregarProducto.jsp\">Insertar Producto</a>\n");
      out.write("                                        <a class=\"nav-link\" href=\"../ServletProducto?op=listar\">Mostrar Producto</a>\n");
      out.write("                                        <a class=\"nav-link\" href=\"ConsultarProducto.jsp\">Consultar Producto</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                                ");
 if (t_usuario.equals("Administrador")) {
      out.write(" <li class=\"nav-item\">\n");
      out.write("                                    <button class=\"dropdown-btn\"><a href=\"#\" class=\"nav-link\"><i class=\"fas fa-users\"></i>\n");
      out.write("                                            Usuarios<i class=\"fa fa-caret-down\"></i></a></button>\n");
      out.write("                                    <div class=\"dropdown-container\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"AgregarUsuario.jsp\">Insertar Usuario</a>\n");
      out.write("\n");
      out.write("                                        <a class=\"nav-link\" href=\"../ServletUsuario?op=listar\">Mostrar Usuario</a>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </li>");
}
      out.write("\n");
      out.write("                                ");
 if (t_usuario.equals("Administrador")) {
      out.write(" <li class=\"nav-item\">\n");
      out.write("                                    <button class=\"dropdown-btn\"><a href=\"#\" class=\"nav-link\"><i class=\"fas fa-users\"></i>\n");
      out.write("                                            Proveedores<i class=\"fa fa-caret-down\"></i></a></button>\n");
      out.write("                                    <div class=\"dropdown-container\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"AgregarProveedor.jsp\">Insertar Proveedor</a>\n");
      out.write("\n");
      out.write("                                        <a class=\"nav-link\" href=\"../ServletProveedor?op=listar\">Mostrar Proveedor</a>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </li>");
}
      out.write("\n");
      out.write("                                <li class=\"nav-item  \" style=\"padding-left: 15px\">\n");
      out.write("                                    <a href=\"Reporte.jsp\" class=\"nav-link\"> <i class=\"fas fa-file-export\"></i> Reportes </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item  \" style=\"padding-left: 15px\">\n");
      out.write("                                    <a href=\"../ServletLogin\" class=\"nav-link\"> <i class=\"fas fa-user-lock\"></i> Cerrar Sesión </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item  \" style=\"padding-left: 15px\">\n");
      out.write("                                    <a href=\"Nosotros.jsp\" class=\"nav-link\"> <i class=\"fas fa-building\"></i>Acerca de Nosotros</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </nav><!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->\n");
      out.write("            </aside>\n");
      out.write("\n");
      out.write("                          <main class=\"col px-0 flex-grow-1 p-3  pb-4\"> <h2 class=\"px-3\"><i class=\"fas fa-envelope-open-text\"></i> Reporte</h2>\n");
      out.write("                        <div class=\"container py-2\" id=\"a\">\n");
      out.write("\n");
      out.write("                        <p class=\"text lead\"> En este módulo se registrará todos los productos del almacen </p><h4> <i class=\"far fa fa-boxes\"></i>CONSULTAS</h4> \n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"container mt-0\"  id=\"b\"> <form> <input type=submit name=btnListar class=\"btn btn-dark m-2 px-2 \" value=\"LISTAR TODOS LOS PRODUCTOS\"></form>  \n");
      out.write("                            <button id=\"myDIV\" class=\"bg-dark text-white rounded m-2 p-1\" onclick=\"printHTML()\">IMPRIMIR REPORTE</button>\n");
      out.write("                         </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"column w-100 bg-light  p-4\" id=\"c\">\n");
      out.write("                            <form  id=\"c\" class=\" \">\n");
      out.write("                                <div class=\"row p-1 px-5\" >\n");
      out.write("                                    <div class=\"col md-4\">\n");
      out.write("                                        <div class=\"form-floating\"><!-- comment -->\n");
      out.write("                                            <input  type=\"date\" name=\"txtInicio\" class=\"form-control\" id=\"floatingInput\" placeholder=\"Fecha de Incio\">\n");
      out.write("                                            <label for=\"floatingInput\">Fecha de Incio</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col md-4\">\n");
      out.write("                                        <div class=\"form-floating\"><!-- comment -->\n");
      out.write("                                            <input type=\"date\" name=\"txtFinal\" class=\"form-control\" id=\"floatingInput\" placeholder=\"Fecha Final\">\n");
      out.write("                                            <label for=\"floatingInput\">Fecha Final</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <center>\n");
      out.write("                                        <input type=submit name=btnBuscar class=\"btn btn-dark m-2 px-2 \" value=Buscar>\n");
      out.write("                                    </center>                 \n");
      out.write("                                </div> </form></div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");
      out.write('\n');
 Connection miConexionCN = null;
    Statement declararObjetoBdST = null;
    ResultSet datosObtenidosRS = null;
    String ruta = "jdbc:mysql://localhost/samsonite?user=root";
    if (request.getParameter("btnBuscar") != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            miConexionCN = DriverManager.getConnection(ruta);
            declararObjetoBdST = miConexionCN.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (java.lang.ClassNotFoundException e) {
        } catch (SQLException e) {
        };
        
        String fechaI = request.getParameter("txtInicio");
        String fechaF = request.getParameter("txtFinal");
                      
        String varConsulta = "SELECT * FROM productos WHERE fecha_ingreso BETWEEN" +fechaI+ "AND" +fechaF;
        
        try {
            datosObtenidosRS = declararObjetoBdST.executeQuery(varConsulta);
            out.println("<div  class='row pt-3' style='overflow-x:auto;'>");

            out.println("<TABLE  table table-striped table-sm' width='100%' ><tr>");
            out.println("<th scope='col'>ID </th>   <th scope='col'>Nombre</th>   <th scope='col'>Marca</th>  <th scope='col'>Proveedor</th>  <th scope='col'>Modelo</th>     <th scope='col'>Stock</th>"
                    + " <th scope='col'>Precio Fijo</th> <th scope='col'>Descuento</th>    <th scope='col'>Precio Venta</th>   <th scope='col'>Unidad Tiempo</th>  <th scope='col'>Garantia</th>"
                    + " <th scope='col'>Fecha de Ingreso</th</tr></thead>");

            while (datosObtenidosRS.next()) {
                out.println("<tr>");
                out.println("<td scope='row'>" + datosObtenidosRS.getInt(1) + "</td>");
                out.println("<td scope='row'>" + datosObtenidosRS.getString(2) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getInt(3) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getInt(4) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getString(5) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getInt(6) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getDouble(7) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getDouble(8) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getDouble(9) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getString(10) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getString(11) + "</td>");
                out.println("<td scope='row' >" + datosObtenidosRS.getString(12) + "</td>");

                out.println("</tr>");
            }; //fin while
            out.println("</TABLE></CENTER></DIV></HTML>");
        } catch (SQLException e) {
        };

        try {
            datosObtenidosRS.close();
            declararObjetoBdST.close();
            miConexionCN.close();
        } catch (SQLException e) {
        };
    };


      out.write("\n");
      out.write("                </div>    </main>  \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    var dropdown = document.getElementsByClassName(\"dropdown-btn\");\n");
      out.write("    var i;\n");
      out.write("\n");
      out.write("    for (i = 0; i < dropdown.length; i++) {\n");
      out.write("        dropdown[i].addEventListener(\"click\", function() {\n");
      out.write("            this.classList.toggle(\"active\");\n");
      out.write("            var dropdownContent = this.nextElementSibling;\n");
      out.write("            if (dropdownContent.style.display === \"block\") {\n");
      out.write("                dropdownContent.style.display = \"none\";\n");
      out.write("\n");
      out.write("            } else {\n");
      out.write("                dropdownContent.style.display = \"block\";\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("function printHTML() {\n");
      out.write("    \n");
      out.write("  if (window.print) {\n");
      out.write("      document.getElementById(\"myDIV\").style.display = \"none\";\n");
      out.write("      document.getElementById(\"fechas\").style.display = \"none\";\n");
      out.write("      document.getElementById(\"reporte\").style.display = \"none\";\n");
      out.write("    window.print();\n");
      out.write("    \n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("           \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div> \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
