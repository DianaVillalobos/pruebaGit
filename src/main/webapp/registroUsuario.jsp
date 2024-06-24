<%@ page import="mx.edu.utez.pruebagit.model.User" %><%--
  Created by IntelliJ IDEA.
  User: CA2
  Date: 21/06/2024
  Time: 01:12 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HttpSession sesion = request.getSession();
    User u = (User) sesion.getAttribute("usuario");
%>
<form method="post" action="sign_in">
    <label>Ingrese su nombre de usuario: </label>
    <input type="text" name="user_name" value="<%=u.getUser_name()%>">
    <br>
    <label>Ingrese su contraseña: </label>
    <input type="password" name="pass1" value="<%=u.getPass()%>">
    <br>
    <label>Ingrese su contraseña nuevamente: </label>
    <input type="password" name="pass2" value="<%=u.getPass()%>">
    <br>
    <label>Ingrese su correo: </label>
    <input type="email" name="email" value="<%=u.getEmail()%>" >
    <br>
    <input type="hidden" value="<%u.getEmail();%>" name="operacion"/>
    <input type="submit" value="Registrarse">
</form>
</body>
</html>
