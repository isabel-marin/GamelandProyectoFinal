<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="gameland.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="modificarUsuario.css">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
<title>Modificar usuario</title>
</head>
<body>
<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
		</nav>		
	</header>
	<form action="Controlador" method="POST">

				<h1>Modificación del usuario <%=session.getAttribute("nombreusuarios")%></h1>
				
				<input class="input" type="text" name="nombreusuarios" value="<%=session.getAttribute("nombreusuarios")%>" required>
				<input class="input" type="text" name="apellido" value="<%=session.getAttribute("apellido") %>" required>
				<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" value="<%=session.getAttribute("DNI") %>"
					maxlength="9">
				<input class="input" type="text" name="codigoPostal" <%=session.getAttribute("codigoPostal") %>>
				<input class="input" type="text" name="tlf" pattern="[9] {0-9}" value="<%=session.getAttribute("tlf")%>" maxlength="9">
				<input class="input" type="text" name="ciudad" value="<%=session.getAttribute("ciudad") %>">				
				<input class="input" type="email" name="email" value="<%=session.getAttribute("email") %>" required>
				<input class="input" type="text" name="password" value="<%=session.getAttribute("password") %>">
				<input class="input" type="text" name="rol" value="<%=session.getAttribute("rol") %>">
				<input type="hidden" name="opcion" value="x">				
				<input class="submit" type="submit" value="Enviar">
				<p><a href="home.jsp">Salir a inicio</a></p>
				
			</form>
</body>
</html>