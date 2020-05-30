<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
       <title>Confirmación</title> 
    </head> 
    <body> 
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean exito;
	

    %>
    
    Datos Confirmados: <%= request.getParameter("username") %>
    <br><%= request.getParameter("password") %>
    
    <%
    response.sendRedirect(request.getContextPath() + "/HTML/ayuda.html");
%>
    </body> 
</html>