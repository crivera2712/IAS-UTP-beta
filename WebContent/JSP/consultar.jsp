<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "gestionsueteres";
String userid = "root";
String password = "admin1234";
String cedula=request.getParameter("cedula");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h1>Búsqueda de Datos</h1>
<table border="1">
<tr>
<td>Cédula</td>
<td>Carrera</td>
<td>Nombre</td>
<td>Apellido</td>
<td>Texto</td>
<td>Pagado</td>
</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "admin1234");
statement=connection.createStatement();
String sql ="select * from user_data where cedula="+cedula+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("cedula") %></td>
<td><%=resultSet.getString("carrera") %></td>
<td><%=resultSet.getString("nombre") %></td>
<td><%=resultSet.getString("apellido") %></td>
<td><%=resultSet.getString("texto") %></td>
<td><%=resultSet.getString("pagado") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>