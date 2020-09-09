<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="CSS/styles.css">
		<link href="https://fonts.googleapis.com/css2?family=Ubuntu+Condensed&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="login.css">
<title>Login</title>

</head>
<body>
	<header>
		<nav>
			<h1 class="logo">GAMELAND</h1>
		</nav>		
	</header>
	
	<form action="Login" method="POST">

        <h1>Login</h1>
        <input class="input" type="text" name="email" placeholder="Email" required>
        <input class="input" type="password" name="password" placeholder="Contraseña" required>
        <input type="submit" name="submit" value="Login">
        <p><a href="registro.jsp">Registro</a></p>
        <span style="color: red"><%=request.getAttribute("msgerror") == null ? "" : request.getAttribute("msgerror")%></span>

    </form>
	
</body>
</html>