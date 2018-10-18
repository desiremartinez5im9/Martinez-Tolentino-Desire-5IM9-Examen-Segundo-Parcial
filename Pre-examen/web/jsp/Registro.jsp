<%-- 
    Document   : Registro
    Created on : 8/10/2018, 08:14:51 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="css/EstiloPreexamen.css">
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <body>
        <h1>Registro</h1>
        Complete el siguiente formulario para registrarse
        <br><br>
        <form action="mx.edu.ipn.cecyt9.unlimited.model/Registro.java">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="Nombre" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Nombre</label>
            </div>
            <br><br>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="ApellidoP" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Apellido Paterno</label>
            </div>
            <br><br>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="ApellidoM" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Apellido Materno</label>
            </div>
            <br><br>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="Escuela" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Escuela</label>
            </div>
            <br><br>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="MateriaFav" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Materia Favorita</label>
            </div>
            <br>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input type="text" name="DeporteFav" class="mdl-textfield__input">
                <label class="mdl-textfield__label" for="sample3">Deporte Favorito</label>
            </div>
            <input type="submit" value="Enviar" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        </form>
    </body>
</html>
