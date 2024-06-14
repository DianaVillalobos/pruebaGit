<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post" action="login">
    <label>Ingrese su usuario</label>
    <input  type="text" name="user_name">
    <br>
    <label>Ingrese su usuario</label>
    <input  type="password" name="pass">
    <br>
    <%
        HttpSession sesion = request.getSession();
        String mensaje =(String) session.getAttribute("mensaje");

        if (mensaje!=null){

    %>
    <p style="color: red"><%=mensaje%></p>
    <%
        }
    %>
    <input type="submit" value="Iniciar Sesión">
</form>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>