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
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
	<%
	Connection conn = Conexion.getInstance().getConnection();
	Statement st = conn.createStatement();
	String query = "SELECT * FROM juegos";
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
			  <% if (session.getAttribute("rol").equals("admin")) { %>
				<li><a href="nuevoJuego.jsp">Nuevo juego</a></li>
			<% } %>
			</ul>
		</nav>
	</header>
	<main>
	
		<div class="section-juego">
					<%
						while (rs.next()) {
					%>
			<div class="item-juego">
				<div class="image-juego-<%=rs.getInt("idjuegos")%>"></div>
			
					
				<p><%=rs.getString("nombrejuegos")%></p>
				<strong> <p> <%=rs.getString("precio")%>&euro;</p></strong>
				<p class="dec"><%=rs.getString("descripcion")%></p>
				<% if (session.getAttribute("rol").equals("admin")) { %>		
					<a href="ControladorJuego?opcion=e&idjuegos=<%=rs.getInt("idjuegos") %>"><i class="fa fa-edit" aria-hidden="true"></i></a>    
					<a href="ControladorJuego?opcion=b&idjuegos=<%=rs.getInt("idjuegos") %>"><i class="fa fa-trash" aria-hidden="true"></i></a>
				<% } %>
			
			</div>
					<%
						}
					%>
		</div>
	</main>
	
	<%
		rs.close();
		st.close();
		conn.close();
	%>
	</body>
</html>