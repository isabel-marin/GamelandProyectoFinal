<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gameland.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="CSS/styles.css">
		<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="nuevoUsuario.css">
	<title>Nuevo Usuario</title>
</head>
<body>
	<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
		</nav>		
	</header>
	<form action="Controlador" method="POST">
				
			<h1>Añadir nuevo usuario</h1>
			<input class="input" type="text" name="nombreUsuarios" placeholder="Nombre" required>
			<input class="input" type="text" name="apellido" placeholder="Apellido" required>
			<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" placeholder="DNI"
					maxlength="9">
			<input class="input" type="text" name="coodigoPostal" placeholder="Código Postal"><br>
			<input class="input" type="text" name="tlf" pattern="[9] {0-9}" placeholder="Teléfono" maxlength="9">
			<input class="input" type="text" name="ciudad" placeholder="Ciudad">
			<input class="input" type="email" name="email" placeholder="Email" required>
			<input class="input" type="password" name="password" placeholder="Contraseña" required><br>
			<input class="submit" type="submit" value="Añadir">
			<p><a href="home.jsp">Salir a inicio</a></p>
			<input id="rol" name="rol" type="hidden" value="visitante">
	
	</form>

</body>
</html>