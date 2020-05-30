<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<header>
	<title>Sistema de Gestión de Pedidos de Suéteres</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta author="Carlos Rivera, David Ortega, Rolando GarcÃ­a">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<link rel='stylesheet' type='text/css' href='../CSS/nav.css' />
</header>

<body>
<body>
	<div class="header">
		<h1>Sistema de Gestión de Pedidos de Suéteres</h1>
		<p>Hecho para UTP: Centro Regional de Veraguas</p>
	</div>

	<div class="navbar">
		<a href="nuevo.jsp">Nuevo pedido</a>
		<a href="consultar.jsp" class="active">Consultar pedidos</a>
		<a href="ayuda.html">Ayuda</a>
	</div>

<br>
<br>
<br>
	<h1 align="center">Consultas de Pedidos</h1>

<br>
<br>
	<table border="1" width="1200" align="center">
		<tr bgcolor="skyblue">
			<th colspan="5">Mantenimiento de Usuarios</th>
			<th>
			<a href="insertar.jsp"></a><img src="../Iconos/añadir.png" width="50" height="50"></a>
			</th>
		</tr>
		<tr bgcolor="skyblue" >
			<th>Cédula</th>
			<th>Carrera</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Texto</th>
			<th>Pagó</th>
			<th>Acción</th>
		</tr>
		<% 
		
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionsueteres", "root", "");
		st=conn.createStatement();
		rs=st.executeQuery("select * from Listado");

		while(rs.next()){
			%>
			<tr>
			<th><%= rs.getString(1) %></th>
			<th><%= rs.getString(2) %></th>
			<th><%= rs.getString(3) %></th>
			<th><%= rs.getString(4) %></th>
			<th><%= rs.getString(5) %></th>
			<th><%= rs.getString(6) %></th>
			<th>
			<a href="editar.jsp?cedula=<%= rs.getString(1) %>">
			<img src="../Iconos/editar.png" width="30" height="30">
			</a>
				<img src="../Iconos/borrar.png" width="30" height="30">
			</th>
			</tr>
			<%
			
		}
		st.close();
		rs.close();
		conn.close();
				
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
%>

	</table>

</body>

</html>