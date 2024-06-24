<%-- 
    Document   : panel
    Created on : 31/05/2024, 4:35:53 p. m.
    Author     : Carlos Chamorro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: #333333;
                color: white;
                font-family: Arial, sans-serif;
            }
            .contenedor {
                text-align: center;
                margin-top: 50px;
            }
            .saludo {
                font-size: 24px;
                margin-bottom: 20px;
            }
            .contenido {
                font-size: 18px;
            }

        </style>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) { 
                response.sendRedirect("index.html");
                return;
            }
        %>

        <section class="contenedor">
            <div class="saludo">
                <h1>Bienvenido, <%= usuario %>!</h1>
            </div>
            <div class="contenido">
                <p>Bienvenido al sistema</p>
            </div>
        </section>
    </body>
</html>
