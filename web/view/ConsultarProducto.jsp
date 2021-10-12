<%@page import="java.util.*" %>
<%@page import="Beans.ProductosBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Agregar Producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp"%>

        </header>
        <div class="container-fluid">
            <div class="row min-vh-100 flex-column flex-md-row">

                <aside class="col-12 col-md-3 col-xl-2 p-0 shadow-lg">
                    <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                    <nav class="navbar navbar-dark navbar-expand-md navbar bd-dark flex-md-column flex-row align-items-center  text-center sticky-top " id="sidebar">
                        <div class="text-center center">
                            <img src="../Imagenes/logo5.jpg" class="rounded-circle " alt="logo" width="54" height="44">
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
                                    <a href="../principal.jsp" class="nav-link "><i class="fas fa-house-user"></i> HOME</a>
                                </li>
                                <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-boxes"></i>
                                            Productos<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarProducto.jsp">Insertar Producto</a>
                                        <a class="nav-link" href="../ServletProducto?op=listar">Mostrar Producto</a>
                                        <a class="nav-link" href="ConsultarProducto.jsp">Consultar Producto</a>


                                    </div>
                                </li>
                                <% if (t_usuario.equals("Administrador")) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-users"></i>
                                            Usuarios<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarUsuario.jsp">Insertar Usuario</a>

                                        <a class="nav-link" href="../ServletUsuario?op=listar">Mostrar Usuario</a>

                                    </div>
                                </li><%}%>
                                <% if (t_usuario.equals("Administrador")) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-users"></i>
                                            Proveedores<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarProveedor.jsp">Insertar Proveedor</a>

                                        <a class="nav-link" href="../ServletProveedor?op=listar">Mostrar Proveedor</a>

                                    </div>
                                </li><%}%>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="Reporte.jsp" class="nav-link"> <i class="fas fa-file-export"></i> Reportes </a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="../ServletLogin" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="Nosotros.jsp" class="nav-link"> <i class="fas fa-building"></i>Acerca de Nosotros</a>
                                </li>
                            </ul>
                        </div>
                    </nav><!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                </aside>
                <main class="col px-0 flex-grow-1 p-3 pb-4">
                    <div class="container py-3">
                        <h2><i class="fa fa-cubes"></i>CONSULTAR PRODUCTOS</h2>
                        <p class="text lead"> En este módulo se registrará todos los productos del almacen </p>
                    </div>
                       <div class="column w-100  bg-light p-4" id="info">
                    <form action="ConsultarProducto.jsp">  
                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa fa-boxes"></i> BUSCAR PRODUCTO</h3> <br>
                               <div class="form-floating">
                                   <div class="form-floating"><!-- comment -->
                                       <input type="text" name="txtCodigo" class="form-control" id="floatingInput" placeholder="Modelo del Producto">
                                       <label for="floatingInput">Codigo de Marca</label>
                                   </div>
                                   <center>
                                       <input type=submit name=btnBuscar class="btn btn-dark m-2 px-2 " value=Buscar>
                                   </center>
                               </div>                    
                            </div>


                    </form>
                         <%@include file="ListadoProductoCod.jsp"%>
                </main>      </div>             
            </div>
        </div>
        <div>
            <%@include file="/includes/footer.jsp"%>
        </div> 
    </body>
</html>
