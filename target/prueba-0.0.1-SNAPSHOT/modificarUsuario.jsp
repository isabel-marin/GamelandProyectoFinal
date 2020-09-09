<%@page import="gameland.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
		<%	
			Usuario u = (Usuario) request.getAttribute("email");
		%>
	

<form action="Controlador" method="POST">

				<h1>Modificación del usuario <%=u.getNombreusuarios() %></h1>
				
				
				
				<input class="input" type="text" name="nombreusuarios" value="<%=u.getNombreusuarios() %>" required>
				<input class="input" type="text" name="apellido" value="<%=u.getApellido() %>" required>
				<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" value="<%=u.getDNI() %>"
					maxlength="9">
				<input class="input" type="text" name="coodigoPostal" <%=u.getCodigoPostal() %>>
				<input class="input" type="text" name="tlf" pattern="[9] {0-9}" value="<%=u.getTlf() %>" maxlength="9">
				<input class="input" type="text" name="ciudad" value="<%=u.getCiudad() %>">				
				<input class="input" type="email" name="email" value="<%=u.getEmail() %>" required>
				<input class="input" type="password" name="password" value="<%=u.getPassword() %>" required>
				<input class="input" name="rol" type="text" value="<%=u.getRol() %>">
				<input type="hidden" name="opcion" value="e">
				<input class="submit" type="submit" value="Enviar">
				<p><a href="home.jsp">Salir a inicio</a></p>
				
			</form>


</body>
</html>