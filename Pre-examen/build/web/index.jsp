<%-- 
    Document   : index
    Created on : 8/10/2018, 08:16:29 AM
    Author     : Desire Martinez Tolentino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen</title>
    </head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="css/EstiloPreexamen.css">
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <body>
        <h1>Examen 2° Parcial</h1>
        <form action="jsp/Registro.jsp">
            <input type="submit" value="Registrarse" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        </form>
        <br><br>
        <form action="jsp/Consulta.jsp">
            <input type="submit" value="Consultar" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        </form>
    </body>
</html>
