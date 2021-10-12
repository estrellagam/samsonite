<%@page import="java.util.*" %>
<%@page import="Beans.ProductosBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="Imagenes/logo5.ico" />
        <link rel="stylesheet" href="Css/nav.css">
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Modificar Producto</title>
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
                        <h2><i class="fa fa-cubes"></i>EDITAR PRODUCTOS</h2>
                        <p class="text lead"> En este módulo se podrá modificar todos los productos del almacen </p>
                    </div>
                    <%
                        ArrayList<ProductosBeans> lista = (ArrayList<ProductosBeans>) request.getAttribute("lista");
                        for (int i = 0; i < lista.size(); i++) {
                            ProductosBeans em = lista.get(i);
                    %>


                    <form action="ServletProducto">  
                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa fa-boxes"></i> INSERTAR PRODUCTO</h3> <br>

                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input type="text" name="txtCodProd"  value="<%=em.getId_productos()%>" readonly="readonly" class="form-control" id="floatingInput" >
                                    <label for="floatingInput">Codigo del Producto</label> <br>
                                </div>
                            </div>   
                        </div> <br>

                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa fa-truck"></i> INFORMACIÓN DEL PRODUCTO</h3> <br>
                            <div class="row pt-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" name="txtNom" class="form-control" id="floatingInput" value="<%=em.getNom()%>">
                                        <label for="floatingInput">Nombre</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtStock" class="form-control" id="floatingInput" value="<%=em.getStock()%>">
                                        <label for="floatingInput">Stock</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text"  name="txtPrecioF" class="form-control" id="floatingInput" value="<%=em.getPrec_f()%>">
                                        <label for="floatingInput">Precio de Fabrica</label>
                                    </div>

                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtCodM" class="form-control" id="floatingInput" readonly="readonly" value="<%=em.getCod_marca()%>">
                                        <label for="floatingInput">Codigo de Marca</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtFecha" class="form-control" id="floatingInput" value="<%=em.getFecha_ingreso()%>">
                                        <label for="floatingInput">Fecha de Ingreso</label>
                                    </div>
                                </div> 
                                <div class="col-md-6">
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtModel" class="form-control" id="floatingInput" value="<%=em.getModelo()%>">
                                        <label for="floatingInput">Modelo</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtCodProv" class="form-control" id="floatingInput" readonly="readonly" value="<%=em.getCod_proveedor()%>">
                                        <label for="floatingInput">Codigo del Proveedor</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtDesc" class="form-control" id="floatingInput" value="<%=em.getDescuento()%>">
                                        <label for="floatingInput">Descuento</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtPrecioV" class="form-control" id="floatingInput" value="<%=em.getPrecio_v()%>">
                                        <label for="floatingInput">Precio de Venta</label>
                                    </div>

                                </div>
                            </div> <br>
                        </div> <br><!-- comment -->

                        <div class="container bg-light pt-4" id="info">
                            <h3><i class="far fa fa-building"></i>Garantia de Fabrica</h3> <br>
                            <div class="row pt-2">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" name="txtU" class="form-control" id="floatingInput" value="<%=em.getUnidad_t()%>">
                                        <label for="floatingInput">Unidad de Tiempo</label> <br>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">

                                        <input type="text" name="txtTG" class="form-control" id="floatingInput" value="<%=em.getTiempo_g()%>">

                                        <label for="floatingSelect">Tiempo de Garantia</label>
                                    </div>
                                </div>
                            </div>      



                        </div> <br>  
                        <input type="hidden" name="op" value="editar">
                        <input type="Submit" name="btn" class=" btn btn-dark" value="Guardar Cambios">
                    </form>
                    <%
                        }
                    %>
                </main>               
            </div>
        </div>
        <div>
            <%@include file="/includes/footer.jsp"%>
        </div> 
    </body>
</html>
