<%@ page session="true" %>

<%
      String usuario="";
    String t_usuario="";
     
    HttpSession sesionOK=request.getSession(); //todo los valores que estas ingresando
    String cod_usuarios=(String)sesionOK.getAttribute("cod_usuarios");
    usuario=(String)sesionOK.getAttribute("usuario");
  t_usuario=(String)sesionOK.getAttribute("t_usuario");  %>