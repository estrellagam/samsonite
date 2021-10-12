<%-- 
    Document   : index
    Created on : 29/08/2021, 06:08:27 PM
    Author     : Estrella
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Iniciar Sesión</title>
        
        
        <script type="text/javascript">
                history.pushState(null, null, location.href);
                history.back();
                history.forward();
                window.onpopstate = function () { history.go(1); };
        </script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Imagenes/logo.jpg">
        <link rel="stylesheet" href="Css/login.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Khand:wght@300&display=swap" rel="stylesheet">        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js">
        </script>
    </head>
    <body style="font-family: 'Khand', sans-serif;">
        <br>
        <div class="container w-75 bg-primary    rounded shadow" id="#container" style="margin-bottom: 180px;margin-top:100px ;">

            <div class="row align-items-stretch">
                <div class="col bg  d-none d-lg-block  col-md-5  col-lg-5 col-xl-6     ">

                </div>
                <div class="col bg-white p-4 rounded-end br-3">
                    <div class="text-end">

                        <a href="principal.jsp">  <img src="Imagenes/logo.jpg" width="48" alt="logo"></a> 
                        <a>SAMSONITE INVENTORY</a>
                    </div>

                    <h2 class="fw-bold text-center py-4"> BIENVENIDO </h2>
                        <form action="ServletLogin" method="post" class="mb-5">
                            <div class="form-floating mb-2 mt-2">
                                <input type="email" name="txtCorreo" class="form-control" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Correo Electrónico</label>
                            </div>
                            <div class="form-floating mt-2">
                                <input type="password" name="txtPass" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Contraseña</label>
                            </div>
                            <div class="d-grid pt-3 ">
                                <input type="submit" style=" background-color: #32E0C4!important;" class="btn btn-block my-2 boton" id="boton" name="btn.login" value="Iniciar Sesión">
                            </div>
                        </form>
                        <%
                            if (request.getAttribute("Error") != null) {
                                String error = request.getAttribute("Error").toString();
                        %>
                        <div class="alert alert-danger" role="alert">
                               <%=error%>
                               </div>
                        <%
                        }
                        %>

                </div>

            </div>

        </div>
    </body>
</html>
