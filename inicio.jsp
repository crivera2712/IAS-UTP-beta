 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<header>
    <title>Sistema de Inscripción y Asistencia a Eventos UTP</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta author="Carlos Rivera, Ludgardys Bordón y Johana González">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel='stylesheet' type='text/css' href='./CSS/login.css' />
</header>

<body>
    <div id="container">
        <form action="login.jsp"   method="POST">
            <br>
            <label for="username">Nombre de usuario:</label>
            <br>
            <input type="text" id="username" name="username">
            <br>
            <br>
            <label for="password">Contraseña:</label>
            <br>
            <input type="password" id="password" name="password">
            <br>
            <div id="lower">
                <br>
                <input type="checkbox"><label for="checkbox">Mantener la sesión iniciada</label>
                <br>
                <input type="submit" value="Aceptar">
            </div>
            <!--/ lower-->
            
        </form>
    </div>
</body>
</html>