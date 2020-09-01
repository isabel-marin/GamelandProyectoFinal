<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<form action="Controlador.java" method="post">
		<h1>Modificación del juego <%=session.getAttribute("nombrejuegos")%></h1>
				<input class="input" type="text" name="idjuegos" placeholder="ID juego" required>
				<input class="input" type="text" name="nombrejuegos" placeholder="Nombre del juego" required>
				<input class="input" type="text" name="precio" placeholder="Precio">
				<input class="input" type="text" name="dexcripcion" placeholder="Descripción">

				<input class="submit" type="submit" value="Modificar">
	
	</form>
	

</body>
</html>