<%@page import="java.util.*" %>
<%@page import="Beans.ProveedorBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EDITAR PROVEEDOR</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="Imagenes/logo5.ico" />
                <link rel="stylesheet" href="Css/nav.css">


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
                                </li><%}%>
                                <% if (t_usuario.equals("Administrador")) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-users"></i>
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
                                    <a href="ServletLogin" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="view/Nosotros.jsp" class="nav-link"> <i class="fas fa-building"></i>Acerca de Nosotros</a>
                                </li>
                            </ul>
                        </div>
                    </nav><!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                </aside>   
                <main class="col px-0 flex-grow-1 p-3 pb-4"> 
                    <form action="ServletProveedor">
                        <div class="container py-3">
                            <h3><i class="fas fa-id-badge"></i> EDITAR PROVEEDOR</h3>
                            <p class="text lead">En este módulo podrás editar proveedores ya registrados en el sistema.</p>

                        </div> <br>
                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa-id-card"></i> INFORMACIÓN</h3> <br>
                            <div class="row"> 
                                <%
                                    ArrayList<ProveedorBeans> lista
                                            = (ArrayList<ProveedorBeans>) request.getAttribute("lista");
                                    for (int i = 0; i < lista.size(); i++) {
                                        ProveedorBeans em = lista.get(i);
                                %>
                                <div class="col-md-6  ">
                                    <div class="form-floating">
                                        <input type="text" name="txtCod"  readonly="readonly" class="form-control" id="floatingInput" value="<%=em.getCod_proveedor()%>" >
                                        <label for="floatingInput">Codigo</label>
                                    </div>
                                    <div class="form-floating">
                                        <input type="text" name="txtDescrip" class="form-control"  value="<%=em.getDescripcion()%>" id="floatingInput" >
                                        <label for="floatingInput">Descripcion</label>
                                    </div>
                                    <div class="form-floating">
                                        <input type="Tel" name="txtTelf" class="form-control"  value="<%=em.getTelefono()%>" id="floatingInput" >
                                        <label for="floatingInput">Telefono</label>
                                    </div>
                                    <div class="form-floating">
                                        <input type="text" name="txtDirec" class="form-control"  value="<%=em.getDireccion()%>" id="floatingInput" >
                                        <label for="floatingInput">Direccion</label>
                                    </div>
                                </div>
                            </div><br/><br/>
                            </div>
                            <div class="container">
                            <input type="hidden" name="op" value="editar">
                            <input type="Submit" name="btn" class=" btn btn-dark" value="Guardar Cambios">
                            </div>
                    </form>
                    <%
                        }
                    %>
                </main>
            </div>
        </div>
        <div>
            <%@include file="../includes/footer.jsp"%>

        </div> 
    </body>
</html>
