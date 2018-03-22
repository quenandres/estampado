<%-- 
    Document   : index
    Created on : 20/02/2018, 06:45:07 PM
    Author     : Administrador
--%>

<%
    String nombre = request.getParameter("nombre");
    String edad = request.getParameter("edad");
    String auxString = request.getParameter("auxString");
%>   

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style\css.css" rel="stylesheet" type="text/css">
        <title>Inicio</title>
    </head>

    <body>
        <div class="main">
        <form action ="ServletPrueba" method="post">            
            <h1><strong>Inicio Sesión</strong></h1>
            <input type="submit" value="Administrador" name="boton"> 
            <input type="submit" value="Artista"  name="boton"> 
            <input type="submit" value="Usuario"  name="boton">           
        </form>
    </div>   
        
    </body>
</html>
