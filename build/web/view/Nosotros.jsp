<%-- 
    Document   : Nosotros
    Created on : 28/09/2021, 05:11:44 PM
    Author     : Estrella
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NOSOTROS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../Imagenes/logo5.ico" />
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
                <main class="col px-0 flex-grow-1 p pb-4">
                    <div class="container pt-3">
                        <div class="container-md" id="historia">
                            <h1 class="display-4 pt-3 text-center">NUESTRA HISTORIA</h1><br/>
                            <div class="row justify-content-md-center">
                                <div class="col-lg-3" style="text-align: center">
                                    <img src="https://i2.wp.com/nowheremag.com/wp-content/uploads/shwayder-ds.jpg" class="img-fluid" alt="jesse shwayder">
                                </div>
                                <div class="col lead">
                                    Durante más de un siglo, Samsonite ha sido sinónimo de equipaje excepcional que combina un diseño atrevido con tecnología de vanguardia y nuevos materiales.<br/><br/> Desde el sencillo baúl de madera diseñado por el fundador
                                    de la empresa, Jesse Shwayder, hasta modernos estuches y bolsos icónicos, muchos de los cuales son pioneros en la industria. <br/><br/> En el mundo móvil actual, Samsonite está creando soluciones inteligentes que marcan
                                    tendencias para las personas en movimiento. Samsonite, ya sea para viajes, placer o viajes diarios, se adapta a todos con una amplia gama de bolsos elegantes, accesorios y bolsos ligeros y duraderos.
                                </div>
                            </div><br>
                            <h1 class="text">VISIÓN</h1>
                            <p class="lead text-justify">Nos aseguraremos de que nuestro compromiso con la sostenibilidad se combine con nuestra continua sed de innovación para crear el tipo de futuro que queremos ver.</p> <br>
                            <h1 class="text">MISIÓN</h1>
                            <p class="lead text-justify">Queremos que nuestros productos marquen una diferencia positiva en la vida de cada viajero.
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <div>
            <%@include file="../includes/footer.jsp"%>
        </div> 
    </body>
</html>
