<%@page import="gameland.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="gameland.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap"
	rel="stylesheet">
<title>Modificar usuario</title>
</head>
<body>
	<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
		</nav>
	</header>

	<h2>Modificar usuario</h2>
	<hr>
	</hr>
	<br>

	<%
		Connection conn = Conexion.getInstance().getConnection();
	Statement st = conn.createStatement();
	String query = "SELECT * FROM usuario";

	ResultSet rs = st.executeQuery(query);
	%>


	<h2>
		Bienvenido
		<%=session.getAttribute("nombreusuario")%>
		<%
			if (session.getAttribute("rol").equals("admin")) {
		%>
		-
		<%=session.getAttribute("rol")%>
		<%
			}
		%>


	</h2>
	 <nav>
        <ul>

            <%
				if (session.getAttribute("rol").equals("admin")) {
			%>
            <li><a href="mofificarUsuario.jsp">A�adir Usuario</a></li>
            <%
				}
            %>

        </ul>
    </nav>

	 <table>
            <caption>Lista de usuarios</caption>

            <tr>
                <td>ID Usuario</td>
                <td>Nombre</td>
                <td>Apellido</td>
                <td>DNI</td>
                <td>Telefono</td>
                <td>Codigo Postal</td>
                <td>Ciudad</td>
                <td>Nick</td>
                <td>Email</td>

                <%
				if (session.getAttribute("rol").equals("admin")) {
		    	%>
                <th>Acciones</th>
                <%
				}
		    	%>
            </tr>

            <%
                if(session.getAttribute("id").equals(session.getAttribute("idusuarios"))){
            %>
            <tr>
                <td><%=rs.getString("idusuarios") %></td>
                <td><%=rs.getString("nombreusuarios") %></td>
                <td><%=rs.getString("apellido") %></td>
                <td><%=rs.getString("DNI") %></td>
                <td><%=rs.getString("tlf") %></td>
                <td><%=rs.getString("codigoPostal") %></td>
                <td><%=rs.getString("ciudad") %></td>
                <td><%=rs.getString("nick") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("password") %></td>


            </tr>

            <%
            }
            %>

            <%
            if(session.getAttribute("rol").equals("admin")){
                while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString("idusuarios") %></td>
                <td><%=rs.getString("nombreusuarios") %></td>
                <td><%=rs.getString("apellido") %></td>
                <td><%=rs.getString("DNI") %></td>
                <td><%=rs.getString("tlf") %></td>
                <td><%=rs.getString("codigoPostal") %></td>
                <td><%=rs.getString("ciudad") %></td>
                <td><%=rs.getString("nick") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("password") %></td>
                <td><i class="fas fa-edit"></i><a
                    href="Controlador?opcion=e&codDepto=<%=rs.getString("codDepto")%>">Editar</a>-<a
                    href="Controlador?opcion=b&codDepto=<%=rs.getString("codDepto")%>">Borrar</a></td>

            </tr>

            <%
            }
        }
        %>




        </table>
	<%
		rs.close();
	st.close();
	conn.close();
	%>

	<h1><%=session.getAttribute("nombreusuario")%></h1>






</body>
</html>