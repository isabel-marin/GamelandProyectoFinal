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
			<div class="item-logo">
				<div class="logo-icono"></div>
				<h1 class="logo">GAMELAND</h1>			
			</div>
		</nav>		
	</header>
		<%
		Juego j = (Juego) request.getAttribute("idjuegos");
		%>
	<form action="ControladorJuego" method="POST">
		<h1>Modificación del juego <%=j.getNombrejuegos() %></h1>
		
				<input class="input" type="text" name="idjuegos" value="<%=j.getIdjuegos() %>" required>
				<input class="input" type="text" name="nombrejuegos" value="<%=j.getNombrejuegos() %>" required>
				<input class="input" type="text" name="precio" value="<%=j.getPrecio() %>">
				<input class="input" type="text" name="descripcion" value="<%=j.getDescripcion() %>">
				<input type="hidden" name="opcion" value="e">
				<input class="submit" type="submit" value="Modificar">
				<p><a href="home.jsp">Salir a inicio</a></p>
	
	</form>
	

</body>
</html>