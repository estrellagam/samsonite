<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="true" %>

<%
      String usuario="";
    String t_usuario="";
     
    HttpSession sesionOK=request.getSession(); //todo los valores que estas ingresando
    String cod_usuarios=(String)sesionOK.getAttribute("cod_usuarios");
    usuario=(String)sesionOK.getAttribute("usuario");
  t_usuario=(String)sesionOK.getAttribute("t_usuario");  %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Css/nav.css">
        <link rel="shortcut icon" href="Imagenes/logo5.ico">
        <title>HOME</title>
    </head>
    <body>
        <header>
            <%@include file="includes/header.jsp"%>
        </header>
        <div class="container-fluid">
            <div class="row min-vh-100 flex-column flex-md-row">
                <aside class="col-12 col-md-3 col-xl-2 p-0  shadow-lg">
                    <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                    <nav class="navbar navbar-dark navbar-expand-md navbar bd-dark flex-md-column flex-row align-items-center  text-center sticky-top " id="sidebar">
                        <div class="text-center center">
                            <img src="Imagenes/logo5.jpg" class="rounded-circle " alt="logo" width="54" height="44">
                        </div>
                        <p class="text-center">SAMSONITE <br> </p>
                        <button type="button" class="navbar-toggler border-0 order-1" data-bs-toggle="collapse" data-bs-target="#navi" aria-controls="nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon 
                                  "></span>
                        </button>
                        <div class="collapse navbar-collapse order-last  " id="navi">
                            <ul class="navbar-nav flex-column w-100 col-xl-2  ">
                                 <li class="nav-item  " id="user" style="padding-left: 15px">
                <a class="nav-link active "><i class="fa fa-user "></i> BIENVENIDO <div class="px-4"><%=usuario%></div></a>
                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="principal.jsp" class="nav-link "><i class="fas fa-house-user"></i> HOME</a>
                                </li>
                                <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-boxes"></i>
                                            Productos<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="view/AgregarProducto.jsp">Insertar Producto</a>
                                        <a class="nav-link" href="ServletProducto?op=listar">Mostrar Producto</a>
                                        <a class="nav-link" href="view/ConsultarProducto.jsp">Consultar Producto</a>


                                    </div>
                                </li>
                                <% if (t_usuario.equals("Administrador")) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-users"></i>
                                            Usuarios<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="view/AgregarUsuario.jsp">Insertar Usuario</a>

                                        <a class="nav-link" href="ServletUsuario?op=listar">Mostrar Usuario</a>

                                    </div>
                                </li>
 <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-suitcase"></i>
                                            Proveedores<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="view/AgregarProveedor.jsp">Insertar Proveedor</a>

                                        <a class="nav-link" href="ServletProveedor?op=listar">Mostrar Proveedor</a>

                                    </div>
                                </li><%}%>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="view/Reporte.jsp" class="nav-link"> <i class="fas fa-file-export"></i> Reportes </a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="ServletLogin?cod=<%=cod_usuarios%>" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="view/Nosotros.jsp" class="nav-link"> <i class="fas fa-building"></i>Acerca de Nosotros</a>
                                </li>
                            </ul>
                        </div>
                    </nav><!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                </aside>
                <main class="col px-0 flex-grow-1 p-3 pb-4">
                    <div class="container py-3">
                        <h3><i class="fas fa-home"></i> Página principal</h3>
                        <p class="text lead">Bienvenido, aqui encontrará un resumen sobre todo lo que puede efrecer la aplicación.</p>
                    </div>
                    <div class="column w-100  mx-auto" id="info">
                        
                        <div class="row d-flex  justify-content-around align-items-center px-3 pt-3">                            
                           <div class="col md-4 px-3 mb-1"  style="width: 18rem;">
                               <center>   <div class="card m-0 " style="width: 18rem;" >
                                    <img src="Imagenes/productos.png" class="card-img-top " alt="Productos">
                                    <div class="card-body">
                                       <center>    <p class="card-text">Todos nuestros productos </p>
                                      <a href="ServletProducto?op=listar" class="btn btn-dark">Productos</a></center>    
                                    </div>
                                </div></center>  
                            </div>
                         
                            <div class="col  md-4 px-3 mb-1"  style="width: 18rem;">
                             <center>      <div class="card mt-1 " style="width: 18rem;" >
                                    <img src="Imagenes/Reportes.png" class="card-img-top" alt="reportes">
                                    <div class="card-body">
                                  <center>       <p class="card-text">Lista de Productos en stock</p>
                                      <a href="view/Reporte.jsp" class="btn btn-dark">Reportes</a>  </center>
                                    </div>
                                 </div> </center>
                            </div>
                               <% if(t_usuario.equals("Administrador")){%> <div class="col md-4 mb-1" style="width: 18rem;">
                                <div class="card m-0 " style="width: 18rem;"  >
                                    <img  src="Imagenes/usuarios.png" class="card-img-top" alt="Usuarios">
                                    <div class="card-body">
                                    <center>     <p class="card-text">Mantenimiento de nuestro personal</p>
                                        <a href="ServletUsuario?op=listar" class="btn btn-dark">Usuarios</a></center>
                                    </div>
                                </div>
                            </div><%}%>
                        </div><br/><br/>
                        <div class="row px-3 pt-3">
                            <div class="col md-4 w-75">
                                <div class="card m-0 "  >
                                    <img src="Imagenes/Proveedor1.jpg" class="card-img-top" alt="Proveedor">
                                    <div class="card-body">
                                  <center>       <p class="card-text">Información sobre los proveedores</p>
                                        <a href="ServletProveedor?op=listar" class="btn btn-dark">Proveedor</a> </center>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-4 w-75">
                                <div class="card" >
                                    <img src="Imagenes/nosotros.png" class="card-img-top" alt="Nosotros">
                                    <div class="card-body">
                                  <center>       <p class="card-text">Información sobre la empresa</p>
                                      <a href="view/Nosotros.jsp" class="btn btn-dark">Nosotros</a></center>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-4">
                                <div class="card mt-1w-75" >
                                    <img src="Imagenes/cerrar.png" class="card-img-top" alt="cerrar_sesíon">
                                    <div class="card-body">
                                    <center>     <p class="card-text">Hasta la proxima</p>
                                        <a href="ServletLogin"  class="btn btn-dark">Cerrar sesión</a></center>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <div>
            <%@include file="includes/footer.jsp"%>
        </div> 
    </body>
</html>
