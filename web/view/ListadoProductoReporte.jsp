<%@page import="java.io.*,java.net.*,java.sql.*" %>
<% Connection miConexionCN = null;
    Statement declararObjetoBdST = null;
    ResultSet datosObtenidosRS = null;
     Statement declararObjetoBdST2= null;
        ResultSet datosObtenidosRS2 = null;
    int num=0;
    double total=0;
    String ruta = "jdbc:mysql://localhost/samsonite?user=root";
    if (request.getParameter("btnBuscar") != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            miConexionCN = DriverManager.getConnection(ruta);
            declararObjetoBdST = miConexionCN.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        declararObjetoBdST2 = miConexionCN.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (java.lang.ClassNotFoundException e) {
        } catch (SQLException e) {
        };
        
        String fechaI = request.getParameter("txtInicio");
        String fechaF = request.getParameter("txtFinal");
                      
        String varConsulta = "SELECT * FROM productos WHERE fecha_ingreso BETWEEN" +"'"+fechaI+"'"+"AND" +"'"+fechaF+"'";
        
        try {
            datosObtenidosRS = declararObjetoBdST.executeQuery(varConsulta);
                   datosObtenidosRS2 = declararObjetoBdST2.executeQuery(varConsulta);
              
            while (datosObtenidosRS2.next()) {num=num+1; datosObtenidosRS2.getDouble(9);
            total=total+datosObtenidosRS2.getDouble(9);}
                  out.println(" <h2 class='px-2'>PRODUCTOS ENCONTRADOS:" +num+"</h2>");
            out.println(" <h2 class=' px-2'>TOTAL: " +total+"</h2>");  
            out.println("<div  class='row p-4' style='overflow-x:auto;'>");
     
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
            out.println("</TABLE></CENTER>  </DIV></HTML>");
        } catch (SQLException e) {
        };

        try {
            datosObtenidosRS.close();
            declararObjetoBdST.close();
                     datosObtenidosRS2.close();
            declararObjetoBdST2.close();
            miConexionCN.close();
        } catch (SQLException e) {
        };
    };
  if (request.getParameter("btnListar") != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            miConexionCN = DriverManager.getConnection(ruta);
            declararObjetoBdST = miConexionCN.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        declararObjetoBdST2 = miConexionCN.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (java.lang.ClassNotFoundException e) {
        } catch (SQLException e) {
        };
        
        String fechaI = request.getParameter("txtInicio");
        String fechaF = request.getParameter("txtFinal");
                      
        String varConsulta = "SELECT * FROM productos";
        
        try {
            datosObtenidosRS = declararObjetoBdST.executeQuery(varConsulta);
                   datosObtenidosRS2 = declararObjetoBdST2.executeQuery(varConsulta);
                   
          while (datosObtenidosRS2.next()) {num=num+1; datosObtenidosRS2.getDouble(9);
            total=total+datosObtenidosRS2.getDouble(9);}
         out.println(" <h2 class=' px-2'>PRODUCTOS ENCONTRADOS:" +num+"</h2>");
            out.println(" <h2 class=' px-2'>TOTAL: " +total+"</h2>");  
            out.println("<div  class='row p-4' style='overflow-x:auto;'>");
             

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
            out.println("</TABLE></CENTER>  </DIV></HTML>");
        } catch (SQLException e) {
        };

        try {
            datosObtenidosRS.close();
            declararObjetoBdST.close();
                     datosObtenidosRS2.close();
            declararObjetoBdST2.close();
            miConexionCN.close();
        } catch (SQLException e) {
        };
    }; %>