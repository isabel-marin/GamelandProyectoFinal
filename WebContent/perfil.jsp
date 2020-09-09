<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="gameland.modelo.Usuario"%>
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
	
<title>Perfil</title>
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

	<h2>Perfil</h2>
	<hr>
	</hr>
	<br>

	<%		
	
		Connection conn = Conexion.getInstance().getConnection();
		Statement st = conn.createStatement();
		String query = "SELECT * FROM usuarios";
		
		ResultSet rs = st.executeQuery(query);
	%>


	<h2>
		Bienvenido
		<%=session.getAttribute("nombreusuarios")%>
		<%
			if (session.getAttribute("rol").equals("admin")) {
		%>
		-
		<%=session.getAttribute("rol")%>
		<%
			}
		%>


	</h2>
	
	
        
			
            <%
				if (session.getAttribute("rol").equals("admin")) {
			%>
            <span>
            <i class="fas fa-angle-right"></i>
            <a href="registro.jsp">----> Añadir Usuario</a>
            
            <%
				}else {
					%>					
					
		            <i class="fas fa-angle-right"></i>
		            <a href="nuevo.jsp">----> Modificar datos</a>
		            </span>
		            
			<%
			}
            %>

        
    

	 <table>
            <caption>Lista de usuarios</caption>

            <tr>                
                <td>Nombre</td>
                <td>Apellido</td>
                <td>DNI</td>
                <td>Telefono</td>
                <td>Codigo Postal</td>
                <td>Ciudad</td>
                <td>Email</td>
		    	<th>Contraseña</th>
		    	<th>Rol</th>
		    	 <%
				if (session.getAttribute("rol").equals("admin")) {
		    	%>
                <th>Acciones</th>
                <%
				}
		    	%>
            </tr>       

         	<%
         	if (session.getAttribute("rol").equals("visitante")){   	
         		if (rs.next()){
%>
         	 <tr>
               <td> <%=session.getAttribute("nombreusuarios")%></td>               
               <td> <%=session.getAttribute("apellido")%></td>
               <td> <%=session.getAttribute("DNI")%></td>
               <td> <%=session.getAttribute("tlf")%></td>
               <td> <%=session.getAttribute("codigoPostal")%></td>
               <td> <%=session.getAttribute("ciudad")%></td>
               <td> <%=session.getAttribute("email")%></td>
               <td> <%=session.getAttribute("password")%></td>
               <td> <%=session.getAttribute("rol")%></td>    
               
              </tr>
                      			
         			<%
         			
         		}
         	}
         	
         	%>

            <%
            if (session.getAttribute("rol").equals("admin")) {
                while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString("nombreusuarios") %></td>
                <td><%=rs.getString("apellido") %></td>
                <td><%=rs.getString("DNI") %></td>
                <td><%=rs.getString("tlf") %></td>
                <td><%=rs.getString("codigoPostal") %></td>
                <td><%=rs.getString("ciudad") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("password") %></td>                
                <td><%=rs.getString("rol") %></td>
                
                <td><i class="fas fa-edit"></i><a
                    href="Controlador?opcion=e&email=<%=rs.getString("email")%>">Editar</a>-<a
                    href="Controlador?opcion=b&email=<%=rs.getString("email")%>">Borrar</a></td>

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







</body>
</html>