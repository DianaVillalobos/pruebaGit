<%@ page import="mx.edu.utez.pruebagit.dao.UserDao" %>
<%@ page import="mx.edu.utez.pruebagit.model.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: CA2
  Date: 21/06/2024
  Time: 12:54 p. m.
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Nombre_usuario</th>
        <th>Correo</th>
        <th>Contraseña</th>
        <th>Actualizar</th>
        <th>Eliminar</th>
    </tr>
    </thead>
    <tbody>
    <%
        //Esta forma de buscar y poner información es la más rudimentaria
        UserDao dao = new UserDao();
        ArrayList<User> lista = dao.getAll(); // Estamos obteniedo la lista
        for(User u : lista){ %>
    <tr>
        <td><%=u.getUser_name()%></td>
        <td><%=u.getEmail()%></td>
        <td><%=u.getPass()%></td>
        <td></td>
        <td><a href="actualizarUsuario">Actualizar</a> </td>
        <td><a href="borrarUsuario">Actualizar</a> </td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
