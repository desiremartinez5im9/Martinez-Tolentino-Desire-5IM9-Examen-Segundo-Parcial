<%-- 
    Document   : Consulta
    Created on : 8/10/2018, 08:15:33 AM
    Author     : Alumno
--%>

<%@page import =" java.sql.* , java.io.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sesion=request.getSession();
            if(sesion.getAttribute("usuario")== null){
                response.sendRedirect("../Entra.jsp");
            }
        %>
        <h1>Hello World!</h1>
        <%
            Connection conexion = null;
            Statement stmt = null;
            ResultSet r;

            try{
               Class.forName("com.mysql.jdbc.Driver");
               conexion = DriverManager.getConnection("jdbc:mysql://localhost/preexamen","root","n0m3l0");
            }catch(SQLException e){
                System.out.println("no conecta");
            }

            try{
                stmt = conexion.createStatement();
                r = stmt.executeQuery("Select * from registro");
                out.println("<table border= 1px>");
                out.println("<tr>");
                out.println("<th>idRegistro</th>");
                out.println("<th>Nombre</th>");
                out.println("<th>ApellidoP</th>");
                out.println("<th>ApellidoM</th>");
                out.println("<th>Escuela</th>");
                out.println("<th>MateriaFav</th>");
                out.println("<th>DeporteFav</th>");
                out.println("</tr>");
                while(r.next()){
                    String idReg = r.getString("idRegistro");
                    String ApellidoP= r.getString("ApellidoP");
                    String ApellidoM = r.getString("ApellidoM");
                    String Escuela = r.getString("Escuela");
                    String MateriaFav = r.getString("MateriaFav");
                    String DeporteFav = r.getString("DeporteFav");

                out.println("<tr>");    
                out.println("<td>"+idReg+"</td>");
                out.println("<td>"+ApellidoP+"</td>");
                out.println("<td>"+ApellidoM+"</td>");
                out.println("<td>"+Escuela+"</td>");
                out.println("<td>"+MateriaFav+"</td>");
                out.println("<td>"+DeporteFav+"</td>");
                out.println("</tr>");
                }
                out.println("</table>");

            }catch(SQLException e){
                System.out.println("No imprime");
            }
        %>
    </body>
</html>
