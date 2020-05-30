<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<header>
	<title>Sistema de Gestión de Pedidos de Suéteres</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta author="Carlos Rivera, David Ortega, Rolando García">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<link rel='stylesheet' type='text/css' href='../CSS/nav.css' />
	<link rel='stylesheet' type='text/css' href='../CSS/nuevo.css' />
</header>

<body>
<body>
	<div class="header">
		<h1>Sistema de Gestión de Pedidos de Suéteres</h1>
		<p>Hecho para UTP: Centro Regional de Veraguas</p>
	</div>

	<div class="navbar">
		<a href="nuevo.jsp" class="active">Nuevo pedido</a> <a href="consultar.jsp">Consultar
			pedidos</a> <a href="ayuda.html">Ayuda</a>
	</div>

	<div id="container">
		<form action="">
			<br> <label type="text" id="cedula" name="cedula">Cédula</label>
			<br> <input type="text" id="cedula" name="cedula"> <br></input>
			<br> <label>Carrera:</label> <select name="carrera">
				<option value="">Escoger una carrera</option>
				<option
					value="Licenciatura en Ingeniería de Sistemas de Información">Licenciatura
					en Ingeniería de Sistemas de Información</option>
				<option value="Licenciatura en Ingeniería de Sistemas y Computación">Licenciatura
					en Ingeniería de Sistemas y Computación</option>
				<option value="Licenciatura en Desarrollo de Software">Licenciatura
					en Desarrollo de Software</option>
				<option value="Licenciatura en Redes Informáticas">Licenciatura
					en Redes Informáticas</option>
				<option value="Licenciatura en Informática Aplicada a la Educación">Licenciatura
					en Informática Aplicada a la Educación</option>
				<option value="Técnico en Informática para la Gestión Empresarial">Técnico
					en Informática para la Gestión Empresarial</option>
					
			</select> 
			<br> 
			<br>
			<br>
			<input type="text" name="nombre">Nombre:</input> <br> 
			<input
				type="text" id="apellido" name="apellido">Apellido:</input> 
				<br>
			<input type="text" id="texto" name="texto">Texto del suéter:</input>
			<br> <input type="text" id="pagado" name="pagado">¿El
			cliente pagó el suéter?:</label> <br> <input type="radio" name="pagado"
				value="Sí">Sí</input> <br> <input type="radio" name="pagado"
				value="No">No</input> <br>
			<div id="lower">
				<input type="submit" value="Aceptar"> <input type="reset"
					value="Borrar datos"> 
			</div>
			<!--/ lower-->
			
		</form>
	</div>

</body>

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

</html>