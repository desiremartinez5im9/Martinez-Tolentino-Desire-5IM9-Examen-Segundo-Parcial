/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.ipn.cecty9.unlimited.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Registrar"})
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        Connection conexion = null;
        Statement sentencia = null;
        HttpSession sesion = request.getSession();
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/preexamen", "root", "n0m3l0");
            sentencia = conexion.createStatement();
            System.out.println("Se ha conectado a la base de datos");
        }catch(SQLException e){
            System.out.println("No se conecto a la base de datos");
        }      
        
        String Nombre = request.getParameter("Nombre");
        String ApellidoP = request.getParameter("ApellidoP");
        String ApellidoM = request.getParameter("ApellidoM");
        String Escuela = request.getParameter("Escuela");
        String MateriaFav = request.getParameter("MateriaFav");
        String DeporteFav = request.getParameter("DeporteFav");
        try{
            sentencia.executeUpdate("Insert into usuarios (nombre_Usuario, pass) values('"+Nombre+"', '"+ApellidoP+"')");
            out.println("<script>alert('Usuario dado de alta');");
            sesion.setAttribute("Nombre", Nombre);
            sesion.setAttribute("ApellidoP", ApellidoP);
            sesion.setAttribute("ApellidoM", ApellidoM);
            sesion.setAttribute("Escuela", Escuela);
            sesion.setAttribute("MateriaFav", MateriaFav);
            sesion.setAttribute("DeporteFav", DeporteFav);
            response.sendRedirect("Principal.jsp");
        }catch(Exception e){
            out.println("<script>alert('Ocurrio un error');");
            out.println("location.href='RegistroUsuarios.html';</script>");
        }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registrar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registrar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

