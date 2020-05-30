<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String cedula = request.getParameter("cedula");
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String texto = request.getParameter("texto");
	String carrera = request.getParameter("carrera");
	String pagado = request.getParameter("pagado");

	Connection con = null;
	ResultSet rs = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionsueteres", "root","");
		Statement st = conn.createStatement();

		st.executeUpdate("insert into Listado values('"+ cedula+ "','" + carrera + "','" + nombre + "','" + apellido + "','" + texto + "','" + pagado + "')");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>

<%

out.println(cedula);
out.println(carrera);
out.println(nombre);
out.println(apellido);
out.println(texto);
out.println(pagado);
response.sendRedirect(request.getContextPath() + "/WebContent/HTML/consultar.jsp");
%>