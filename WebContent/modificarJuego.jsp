<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gameland.modelo.Juego"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="CSS/styles.css">
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="modificarJuego.css">
	<title>Modificar Juego</title>
</head>
<body>
	<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
		</nav>		
	</header>
	<form action="Controlador" method="post">
		<h1>Modificación del juego <%=session.getAttribute("nombrejuegos")%></h1>
				<input class="input" type="text" name="idjuegos" value="" required>
				<input class="input" type="text" name="nombrejuegos" value="" required>
				<input class="input" type="text" name="precio" value="">
				<input class="input" type="text" name="descripcion" value="">

				<input class="submit" type="submit" value="Modificar">
	
	</form>
	

</body>
</html>