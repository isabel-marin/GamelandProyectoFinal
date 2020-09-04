<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gameland.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="CSS/styles.css">
		<link rel="stylesheet" type="text/css" href="home.css">
		<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
		<title>GAMELAND</title>
		<meta charset="UTF-8">
	</head>
	<body>
	<%
	Connection conn = Conexion.getInstance().getConnection();
	Statement st = conn.createStatement();
	String query = "SELECT * FROM usuarios";
	ResultSet rs = st.executeQuery(query);
	%>
	<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
			<ul>
			  <li><a href="login.jsp">Cerrar Sesion</a></li>
			  <li><a class="active" href="home.jsp">Juegos</a></li>
			  <li><a href="ubicacion.jsp">Encuentranos</a></li>
			  <li><a class="Perfil" href="perfil.jsp">Perfil</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<div class="section-juego">
			<div class="item-juego">
				<div class="image-juego-1"></div>
				<strong class="item-juego-name">
				<a>Coimbra</a><br>
				<p>40,95&euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			
			</div>
			<div class="item-juego">
				<div class="image-juego-2"></div>
				<strong class="item-juego-name">
				<a>Dixit Odissey</a><br>
				<p>26,99 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-3"></div>
				<strong class="item-juego-name">
				<a>Virus</a><br>
				<p>12,99 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-4"></div>
				<strong class="item-juego-name">
				<a>Safranito</a><br>
				<p>35,99 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-5"></div>
				<strong class="item-juego-name">
				<a>Las Mansiones de la Locura</a><br>
				<p>99,95 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-6"></div>
				<strong class="item-juego-name">
				<a>Sushi Go Party</a><br>
				<p>22,50 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-7"></div>
				<strong class="item-juego-name">
				<a>Catan</a><br>
				<p>35,90 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<% } %>
			</div>
			<div class="item-juego">
				<div class="image-juego-8"></div>
				<strong class="item-juego-name">
				<a>Ciudadelas</a><br>
				<p>14,95 &euro;</p>
				</strong>
				<% if (session.getAttribute("rol").equals("admin")){ %>
				<li><a href="modificarJuego.jsp">Modificar Juego</a></li>
				<i class="fas fa-trash"></i>
				<% } %>
			</div>
		</div>
	</main>
	<footer></footer>
	</body>
</html>