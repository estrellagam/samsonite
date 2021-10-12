<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include file="../includes/sesion.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Agregar Proveedor</title>
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
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-suitcase"></i>
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
                        <h3><i class="fas fa-suitcase"></i> NUEVO PROVEEDOR</h3>
                        <p class="text lead">En este módulo podrás ingresar proveedores nuevos al sistema.</p>

                    </div> <br>
                    <div class="container bg-light pt-4" id="info">

                        <h3> <i class="far fa-id-card"></i> INFORMACIÓN PERSONAL</h3> <br>
                            <form action="../ServletProveedor">  
                            <div class="row row-center"> 
                                <div class="col-md-12  ">
                                    <div class="form-floating py-2">
                                        <input type="text" name="txtCod" class="form-control" id="floatingInput" placeholder="Nombres">
                                        <label for="floatingInput">Codigo del Proveedor</label>
                                    </div>
                                    <div class="form-floating py-2">
                                        <input type="text" name="txtDescrip" class="form-control" id="floatingInput" placeholder="Nombres">
                                        <label for="floatingInput">Descripcion del Proveedor</label>
                                    </div>
                                    <div class="form-floating py-2">
                                        <input type="number"  min="0" max="999999999"  name="txtTelf" class="form-control" id="floatingInput" placeholder="Nombres">
                                        <label for="floatingInput">Telefono del Proveedor</label>
                                    </div>
                                    <div class="form-floating py-2">
                                        <input type="text" name="txtDirec" class="form-control" id="floatingInput" placeholder="Nombres">
                                        <label for="floatingInput">Direccion del Proveedor</label>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid px-0">
                                <input type="hidden" name="op" value="insertar">
                                <input type="Submit" name="btn" class=" btn btn-dark" value="Guardar">
                            </div>
                        </form>
                    </div>
                </main>
            </div>
        </div>
        <div>
            <%@include file="../includes/footer.jsp"%>

        </div> 
    </body>
</html>
