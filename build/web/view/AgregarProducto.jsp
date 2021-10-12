<%@page import="java.util.*" %>
<%@page import="Beans.UsuariosBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Imagenes/logo5.ico" />
        <title>Agregar Producto</title>
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
                                    <a href="../ServletLogin?cod=<%=cod_usuarios%>" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
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
                        <h2><i class="fa fa-cubes"></i>AGREGAR PRODUCTOS</h2>
                        <p class="text lead"> En este módulo se registrará todos los productos del almacen </p>
                    </div>
                        <form action="../ServletProducto">  
                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa fa-boxes"></i> INSERTAR PRODUCTO</h3> <br>

                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input type="text" name="txtCodProd" class="form-control" id="floatingInput" placeholder="Codigo">
                                    <label for="floatingInput">Codigo del Producto</label> <br>
                                </div>
                            </div>   
                        </div> <br>

                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa fa-truck"></i> INFORMACIÓN DEL PRODUCTO</h3> <br>
                            <div class="row pt-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" name="txtNom" class="form-control" id="floatingInput" placeholder="Nombre">
                                        <label for="floatingInput">Nombre</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtStock" class="form-control" id="floatingInput" placeholder="Stock">
                                        <label for="floatingInput">Stock</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text"  name="txtPrecioF" class="form-control" id="floatingInput" placeholder="Precio de Fabrica">
                                        <label for="floatingInput">Precio de Fabrica</label>
                                    </div>

                                    <div class="form-floating mt-2">
                                        <select class="form-select" name="txtCodM" id="floatingSelect" aria-label="Floating label select example">
                                            <option selected>Elija una opción</option>
                                            <option value="1">1.Samsonite</option>
                                            <option value="2">2.Saxoline</option>
                                             <option value="3">3. Xtrem</option>
                                        </select>
                                        <label for="floatingSelect">Seleccione el codigo de Marca</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="date" name="txtFecha" class="form-control" id="floatingInput" >
                                        <label for="floatingInput">Fecha de Ingreso</label>
                                    </div>
                                </div> 
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select" name="txtModel" id="floatingSelect" aria-label="Floating label select example">
                                            <option selected>Elija una opción</option>
                                            <option value="Clasica">Valijas</option>
                                            <option value="Moderna">Mochilas</option>
                                            <option value="Moderna">Bolsos</option>
                                        </select>
                                        <label for="floatingSelect">Seleccione el modelo</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <select class="form-select" name="txtCodProv" id="floatingSelect" aria-label="Floating label select example">
                                            <option selected>Elija una opción</option>
                                            <option value="1">Cueros Arequipa</option>
                                            
                                        </select>
                                        <label for="floatingSelect">Seleccione el codigo de proveedor</label>
                                    </div>
                                   
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtDesc" class="form-control" id="floatingInput" placeholder="Descuento">
                                        <label for="floatingInput">Descuento</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtPrecioV" class="form-control" id="floatingInput" placeholder="Precio de Venta">
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
                                        <input type="text" name="txtU" class="form-control" id="floatingInput" placeholder="Unidad de Tiempo">
                                        <label for="floatingInput">Unidad de Tiempo</label> <br>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select" name="txtTG" id="floatingSelect" aria-label="Floating label select example">
                                            <option selected></option>
                                            <option value="Dia">Día</option>
                                            <option value="Semana">Semana</option>
                                            <option value="Mes">Mes</option>
                                            <option value="Año">Año</option>
                                        </select>
                                        <label for="floatingSelect">Tiempo de Garantia</label>
                                    </div>
                                </div>
                            </div>       
              
                        </div> <br>
                        <input type="hidden" name="op" value="insertar">
                        <input type="Submit" name="btn" class=" m-4 btn btn-dark" value="Guardar">
                    </form>
                </main>               
            </div>
        </div>
        <div>
            <%@include file="/includes/footer.jsp"%>
        </div> 
    </body>
</html>
