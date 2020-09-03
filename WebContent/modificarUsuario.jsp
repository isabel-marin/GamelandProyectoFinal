<%@page import="gameland.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="modificarUsuario.css">
<title>Modificar usuario</title>
</head>
<body>

<form action="Controlador" method="post">

				<h1>Modificación de usuario</h1>
				
				<%
				Usuario u = (Usuario) request.getAttribute("idusuarios");
				%>

				
				<input class="input" type="text" name="nombreUsuarios" value="<%=u.getNombreusuarios() %>" required>
				
				<input class="input" type="text" name="apellido" value="<%=u.getApellido() %>" required>
				<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" value="<%=u.getDNI() %>"
					maxlength="9">
				<input class="input" type="text" name="coodigoPostal" <%=u.getCodigoPostal() %>>
				<input class="input" type="text" name="tlf" pattern="[9] {0-9}" value="<%=u.getTlf() %>" maxlength="9">
				<input class="input" type="text" name="ciudad" value="<%=u.getCiudad() %>">
				<span>
				<input class="input" type="email" name="email" value="<%=u.getEmail() %>" required>
				<input class="input" type="password" name="password" value="<%=u.getPassword() %>" required>
				</span>
				<input class="submit" type="submit" value="Enviar">
				<p><a href="home.jsp">Salir a inicio</a></p>
			</form>


</body>
</html>