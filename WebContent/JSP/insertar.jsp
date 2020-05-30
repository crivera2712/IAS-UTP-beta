 <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String cedula=request.getParameter("cedula");
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String texto=request.getParameter("texto");
String carrera=request.getParameter("carrera");
String pagado=request.getParameter("pagado");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "admin1234");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(cedula,carrera,nombre,apellido,texto,pagado)values('"+cedula+"','"+carrera+"','"+nombre+"','"+apellido+"','"+texto+"','"+pagado+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>