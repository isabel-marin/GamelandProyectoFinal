<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="registro.css">
<title>Registro</title>
</head>
<body>
<header>
	<nav>
		<h1 class="logo">GAMELAND</h1>
	</nav>		
</header>		
			

			<form action="Controlador" method="post">

				<h1>Registro</h1>

				<input class="input" type="text" name="nombreusuarios" placeholder="Nombre" required>
				
				<input class="input" type="text" name="apellido" placeholder="Apellidos" required>
				<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" placeholder="DNI"
					maxlength="9">
				
				<input class="input" type="text" name="tlf" pattern="[9] {0-9}" placeholder="Teléfono" maxlength="9">
				<input class="input" type="text" name="codigoPostal" placeholder="Codigo Postal">
				<input class="input" type="text" name="ciudad" placeholder="Ciudad">
				<span>
				<input class="input" type="email" name="email" placeholder="Correo" required>
				<input class="input" type="password" name="password" placeholder="Contraseña" required>
				
				
				
				
				</span>
				<input class="submit" type="submit" value="Enviar">
				<p><a href="login.jsp">Ya tengo cuenta</a></p>
			</form>
		

</body>
</html>