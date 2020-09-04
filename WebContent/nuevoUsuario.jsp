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
			<input class="input" type="text" name="nombreUsuarios" value="Nombre" required>
			<input class="input" type="text" name="apellido" value="Apellido" required>
			<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" value="DNI"
					maxlength="9">
			<input class="input" type="text" name="coodigoPostal" value="Código Postal"><br>
			<input class="input" type="text" name="tlf" pattern="[9] {0-9}" value="Teléfono" maxlength="9">
			<input class="input" type="text" name="ciudad" value="Ciudad">
			<input class="input" type="email" name="email" value="Email" required>
			<input class="input" type="password" name="password" value="Contraseña" required><br>
			<input class="submit" type="submit" value="Añadir">
			<p><a href="home.jsp">Salir a inicio</a></p>
	
	</form>

</body>
</html>