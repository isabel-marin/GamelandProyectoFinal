<%@page import="gameland.modelo.UsuarioDAO"%>
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
			<h1 class="logo">GAMELAND</h1>
		</nav>
	</header>

	<h2>Perfil</h2>
	<hr>
	</hr>
	<br>

	<%		
	
		Usuario u = (Usuario) session.getAttribute("email");
		
		Connection conn = Conexion.getInstance().getConnection();
		Statement st = conn.createStatement();
		String query = "SELECT * FROM usuarios";
		ResultSet rs = st.executeQuery(query);
		
		String user = "SELECT * FROM usuarios WHERE email = ? ";
		PreparedStatement pst = conn.prepareStatement(user);		
		pst.setString(1, u.getEmail());
		
		
		ResultSet rs2 = pst.executeQuery();
		
		
		
		
		
	
		
		
		
		
		
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
            <a href="nuevoUsuario.jsp">----> Añadir Usuario</a>
            
            <%
				}else {
					%>					
					
		            <i class="fas fa-angle-right"></i>
		            <a href="modificarUsuario.jsp">----> Modificar datos</a>
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

                <%
				if (session.getAttribute("rol").equals("admin")) {
		    	%>
		    	<th>Contraseña</th>
		    	<th>Rol</th>
                <th>Acciones</th>
                <%
				}
		    	%>
            </tr>       

         	<%
         	if (session.getAttribute("rol").equals("visitante")){   	
         		if (rs2.next()){
			%>
         	 <tr>
                <td><%=rs2.getString("nombreusuarios") %></td>
                <td><%=rs2.getString("apellido") %></td>
                <td><%=rs2.getString("DNI") %></td>
                <td><%=rs2.getString("tlf") %></td>
                <td><%=rs2.getString("codigoPostal") %></td>
                <td><%=rs2.getString("ciudad") %></td>
                <td><%=rs2.getString("email") %></td>  
               
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