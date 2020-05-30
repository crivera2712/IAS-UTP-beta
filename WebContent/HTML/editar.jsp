<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
    <html lang="es">
    </html>
<header>
    <title>Sistema de Gestión de Pedidos de SuÃ©teres</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta author="Carlos Rivera, David Ortega, Rolando GarcÃ­a">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel='stylesheet' type='text/css' href='../CSS/nav.css' />
    <link rel='stylesheet' type='text/css' href='../CSS/editar.css' />
</header>

<body>

    <body>
        <div class="header">
            <h1>Sistema de Gestión de Pedidos de Suéteres</h1>
            <p>Hecho para UTP: Centro Regional de Veraguas</p>
        </div>

        <div class="navbar">
            <a href="nuevo.jsp">Nuevo pedido</a>
            <a href="consultar.jsp">Consultar pedidos</a>
            <a href="ayuda.html">Ayuda</a>
        </div>
        
        <%
        String ced=request.getParameter("cedula");
 		Connection conn=null;
 		Statement st=null;
 		ResultSet rs=null;
 		
 		try
 		{
 		Class.forName("com.mysql.jdbc.Driver");
 		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionsueteres?user=root&password=");
 		st=conn.createStatement();
 		rs=st.executeQuery("select * from Listado where cedula='"+ced+"'");
 		while (rs.next()){

         %>
         <div id="container">
            <form action="">
			<br> <label id="cedula">Cédula</label>
			<br> <input type="text" id="cedula" name="cedula"value=<%=rs.getString(1) %>></input>
			<br> <p>Carrera:</p> 
			<select name="carrera"> <%= rs.getString(2) %>
				<option value=""><%= rs.getString(2) %> (actual)</option>
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
			<p>Nombre</p>
			
			<input
				type="text" id="apellido" name="apellido" value=<%= rs.getString(3) %>>Apellido:
				<br>
			<input type="text" id="texto" name="texto"value=<%= rs.getString(4) %>>Texto del suéter:
			<br> <input type="text" id="pagado" name="pagado"value=<%= rs.getString(5) %>>¿El
			cliente pagó el suéter?: <br> 
			<input type="radio" name="pagado"
				value="Sí">Sí <br> 
			<input type="radio" name="pagado"
				value="No">No <br>
			<div id="lower">
				<input type="submit" name="btnEditar" value="Editar"> 
				<input type="reset"
					value="Borrar datos"> 
			</div>
			<!--/ lower-->
			
		</form>
        </div>
<%

 		}
			
	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
 		
 		if(request.getParameter("btnEditar") != null ){
 			
 			String cedula = request.getParameter("cedula");
 			
 			String carrera = request.getParameter("carrera");
 			String nombre = request.getParameter("nombre");
 			String apellido = request.getParameter("apellido");
 			String texto = request.getParameter("texto");
 			String pagado = request.getParameter("pagado");

		st.executeUpdate("update Listado SET cedula='"+cedula+"',carrera='"+carrera+"',nombre='"+nombre+"',apellido='"+apellido+"',texto='"+texto+"',pagado='"+pagado+"' where cedula='"+cedula+"'");
 		request.getRequestDispatcher("consultar.jsp").forward(request,response);	
 		}

%>
    </body>
    
    

</html>