<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <% double total = 0;
        int num = 0;
        double venta = 0;     
    %>
    <%@include file="../includes/sesion.jsp"%>
    <%@page import="java.util.*" %>
    <%@page import="Beans.ProductosBeans" %>
    <head>
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Mostrar Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">       
        <link rel="stylesheet" href="Css/nav.css">
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp"%>
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
                    <div class="container py-3">
                        <h2><i class="fa fa-cubes"></i> MOSTRAR PRODUCTOS</h2>
                        <p class="text lead">En este módulo mostrará las existencias dentro del almacen, al igual que sus caracteristicas y un apartado de administración.</p>

                    </div>
                    <div class="column w-100  bg-light p-4" id="info">
                        <h2> <i class="fa fa-truck"></i> PRODUCTOS DISPONIBLES</h2>
                        <a role="button" href="view/AgregarProducto.jsp" class="btn btn-dark">Agregar</a>
                        <div class="row pt-3" style="overflow-x:auto;">
                            <table class="table table-striped table-sm" width="100%">
                                <thead>
                                    <tr class="text-center" bgcolor="#D5DBDB">
                                        <th scope="col">ID</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Marca</th>
                                        <th scope="col">Proveedor</th>
                                        <th scope="col">Modelo</th>
                                        <th scope="col">Stock</th>
                                        <th scope="col">Precio Fijo</th>
                                        <th scope="col">Descuento</th>
                                        <th scope="col">Precio Venta</th>
                                        <th scope="col">Unidad Tiempo</th>
                                        <th scope="col">Garantia</th>
                                        <th scope="col">Fecha de Ingreso</th>
                                        <th scope="col" class="text-center">Editar</th>
                                    </tr>
                                </thead>
                                <%
                                    ArrayList<ProductosBeans> lista = (ArrayList<ProductosBeans>) request.getAttribute("lista");
                                    for (int i = 0; i < lista.size(); i++) {
                                        ProductosBeans em = lista.get(i);
                                %>
                                <tr class="text-center">
                                    <td><%=em.getId_productos()%></td>
                                    <td><%=em.getNom()%></td>
                                    <td><%=em.getCod_marca()%></td>
                                    <td><%=em.getCod_proveedor()%></td>
                                    <td><%=em.getModelo()%></td>
                                    <td><%=em.getStock()%></td>
                                    <td><%=em.getPrec_f()%></td>
                                    <td><%=em.getDescuento()%></td>
                                    <td><%=em.getPrecio_v()%></td>
                                    <td><%=em.getUnidad_t()%></td>
                                    <td><%=em.getTiempo_g()%></td>
                                    <td><%=em.getFecha_ingreso()%></td>
                                    <%
                                               total = total + em.getPrecio_v();
                                               num = num + 1;%>

                                    <th>
                                        <a href="ServletProducto?op=eliminar&cod=<%=em.getId_productos()%>" class="btn btn-danger" role="button">ELIMINAR</a>
                                        <a href="ServletProducto?op=consultarCod&cod=<%=em.getId_productos()%>" class="btn btn-success" role="button">MODIFICAR</a>
                                    </th>
                                </tr>
                                <%
                                    }
                                %>
                            </table>
                        </div>    
                        <h2>TOTAL DE PRODUCTOS EN STOCK ES: <%=num%></h2>  
                    </div>
                </main>
            </div>
        </div>
        <div>
            <%@include file="/includes/footer.jsp"%>
        </div> 
    </body>
</html>