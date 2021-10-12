
<%@page import="java.util.*" %>
<%@page import="Beans.UsuariosBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MOSTRAR USUARIO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="icon" href="../Imagenes/logo5.ico" />
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
                <main class="col px-0 flex-grow-1 p-3 ">
                    <div class="container py-3">
                        <h3><i class="fas fa-id-badge"></i> MOSTRAR USUARIOS</h3>
                        <p class="text lead">En este módulo podrás presenciar todos las cuentas disponibles de los administradores y empleados, también se podrá editar, actualizar o eliminar cualquier cuenta que se desee..</p>

                    </div> 
                    <div class="column w-100 bg-light p-4" id="info">
                        <h3> <i class="far fa-id-card"></i> CUENTAS DISPONIBLES</h3> <br>  
                        <div class="row pt-3">
                            <div class="col-md-12" style="overflow-x:auto;">
                                
                                <table class="table table-striped table-sm">
                                    <thead class="">
                                        <tr bgcolor="#D5DBDB">
                                            <th>Codigo</th>
                                            <th>Nombre de Usuario</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Correo Electronico</th>
                                            <th>DNI</th>
                                            <th>Telefono</th>
                                            <th>Contraseña</th>
                                            <th>Tipo Usuario</th>
                                         
                                            <th scope="col" class="text-center">Editar</th>
                                        </tr>
                                    </thead>                                    

                                    <%
                                        ArrayList<UsuariosBeans> lista
                                                = (ArrayList<UsuariosBeans>) request.getAttribute("lista");
                                        for (int i = 0; i < lista.size(); i++) {
                                            UsuariosBeans em = lista.get(i);
                                    %>
                                    <tr class="text-center">
                                        <td><%=em.getCod()%></td>
                                        <td><%=em.getNomusu()%></td>
                                        <td><%=em.getNom()%></td>
                                        <td><%=em.getApell()%></td>
                                        <td><%=em.getCorreo()%></td>
                                        <td><%=em.getDni()%></td>
                                        <td><%=em.getTelefono()%></td>
                                        <td><%=em.getContraseña()%></td>
                                        <td><%=em.getTipo()%></td>
                                     
                                         <td>
                                             <a href="ServletUsuario?op=eliminar&cod=<%=em.getCod()%>" class="btn btn-danger" role="button" >
                                                 ELIMINAR
                                             </a>
                                             <a href="ServletUsuario?op=consultarCod&cod=<%=em.getCod()%>" role="button" class="btn btn-success">  
                                                 MODIFICAR
                                             </a>
                                         </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <div>
         <%@include file="/includes/footer.jsp"%>
        </div> 
    </body>
</html>
