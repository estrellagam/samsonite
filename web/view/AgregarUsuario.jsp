<%-- 
    Document   : AgregarUsuario
    Created on : 28/09/2021, 05:10:34 PM
    Author     : Estrella
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Agregar Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <%@include file="../includes/header.jsp"%>
        </header>
        <div class="container-fluid">
            <div class="row min-vh-100 flex-column flex-md-row">
                <aside class="col-12 col-md-3 col-xl-2 p-0  shadow-lg">
                    <div>
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
                    </div>
                </aside>
                <main class="col px-0 flex-grow-1 p-3 pb-4">
                    <div class="container py-3">
                        <h3><i class="fas fa-id-badge"></i> NUEVO USUARIO</h3>
                        <p class="text lead">En este módulo podrás ingresar usuarios nuevos al sistema ya sea un administrador o empleado, también podrá ingresar al mantenimiento de productos en el Stock.</p>

                    </div> <br><br>
                    <div class="container bg-light pt-4" id="info">

                        <h3> <i class="far fa-id-card"></i> INFORMACIÓN PERSONAL</h3> <br>
                        <form action="../ServletUsuario">  
                            <div class="row"> 
                                <div class="col-md-6  ">

                                    <div class="form-floating">
                                        <input type="text" name="txtNom" class="form-control" id="floatingInput" placeholder="Nombres">
                                        <label for="floatingInput">Nombres</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtNomUsu" class="form-control" id="floatingInput" placeholder="Nombre de usuario">
                                        <label for="floatingInput">Nombre de usuario</label>

                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="tel" name="txtDni" class="form-control" id="floatingInput" placeholder="Nombre de usuario">
                                        <label for="floatingInput">DNI</label>

                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="password" name="txtPass" class="form-control" id="floatingPassword" placeholder="Password">
                                        <label for="floatingPassword">Contraseña</label>
                                    </div>
                                        
                                </div>
                                <div class="col-md-6 ">
                                    <div class="form-floating ">
                                        <input type="text" name="txtApellido" class="form-control" id="floatingInput" placeholder="Apellidos">
                                        <label for="floatingInput">Apellidos</label>

                                    </div>
                                    <div class="form-floating mb-2 mt-2">
                                        <input type="email" name="txtCorreo" class="form-control" id="floatingInput" placeholder="name@example.com">
                                        <label for="floatingInput">Correo Electrónico</label>
                                    </div>
                                    <div class="form-floating mb-2 mt-2">
                                        <input type="tel" name="txtTel" class="form-control" id="floatingInput" placeholder="993848383">
                                        <label for="floatingInput">Teléfono</label>
                                    </div>
                                    <div class="form-floating">
                                        <select class="form-select" name="txtTipo" id="floatingSelect" aria-label="Floating label select example">
                                            <option selected>Elija una opción</option>
                                            <option value="Administrador">Administrador</option>
                                            <option value="Empleado">Empleado</option>
                                        </select>
                                        <label for="floatingSelect">Tipo de Usuario</label>
                                    </div>                       
                                </div>
                                </div>  <br> 
                            <input type="hidden" name="op" value="insertar">
                            <input type="Submit" name="btn" class=" btn btn-dark" value="Guardar">


                        </form> </div>



                </main>
            </div>
        </div>
        <div>
            <%@include file="../includes/footer.jsp"%>

        </div> 
    </body>
</html>