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
			<div class="item-juego">
				<table>
					<caption><b>JUEGOS</b></caption>
						<tr>
							<th>ID JUEGOS</th>
							<th>NOMBRE</th>
							<th>PRECIO</th>
							<th>DESCRIPCIÓN</th>
						</tr>
					<%
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getInt("idjuegos")%></td>
						<td><%=rs.getString("nombrejuegos")%></td>
						<td><%=rs.getString("precio")%></td>
						<td><%=rs.getString("descripcion")%></td>
					<% if (session.getAttribute("rol").equals("admin")) { %>		
						<td><a href="ControladorJuego?opcion=e&idjuegos=<%=rs.getInt("idjuegos") %>"><i class="fa fa-edit" aria-hidden="true"></i></a>    <a href="ControladorJuego?opcion=b&idjuegos=<%=rs.getInt("idjuegos") %>"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
					<% } %>
					</tr>

					<%
						}
					%>
				</table>
			</div>
		</div>
	</main>
	
	<%
		rs.close();
		st.close();
		conn.close();
	%>
	</body>
</html>