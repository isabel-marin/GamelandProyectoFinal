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
			

			<form action="login.jsp" method="post">

				<h1>Registro</h1>

				<!-- <label for="nombreUsuarios">Nombre: <span>*</span></label> -->
				<input class="input" type="text" name="nombreUsuarios" placeholder="Nombre" required>
				<!-- <label for="apellido">Apellidos: <span>*</span></label> -->
				<input class="input" type="text" name="apellido" placeholder="Apellidos" required>
				<!-- <label for="DNI">DNI:</label> -->
				<input class="input" type="text" name="DNI" pattern="[8] {0-9} [1] {A-Z,a-z}" placeholder="DNI"
					maxlength="9">
				<!-- <label for="coodigoPostal">Codigo Postal:</label> -->
				<input class="input" type="text" name="coodigoPostal" placeholder="Codigo Postal">
				<!-- <label for="tlf">Teléfono:</label> -->
				<input class="input" type="text" name="tlf" pattern="[9] {0-9}" placeholder="Teléfono" maxlength="9">
				<!-- <label for="ciudad">Ciudad:</label> -->
				<input class="input" type="text" name="ciudad" placeholder="Ciudad">
				<!-- <label for="nick">Usuario:</label> -->
				<input class="input" type="text" name="nick" placeholder="Usuario">
				<!-- <label for="correo">Correo:<span> *</span></label> -->
				<input class="input" type="email" name="email" placeholder="Correo" required>
				<!-- <label for="password">Contraseña: <span> *</span></label> -->
				<input class="input" type="password" name="password" placeholder="Contraseña" required>

				<input class="submit" type="submit" value="Enviar">
				<p>¿Ya tengo cuenta?</p>

			</form>
		

</body>
</html>