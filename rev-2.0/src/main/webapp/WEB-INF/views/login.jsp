<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Yahoo!!! From JSP</title>
		<style>
		p {
			color: red;
		}
		</style>
	</head>
<body>
	<p class="error">${errorMessage}</p>
	<form action="login.do" method="post">
		Login: <input type="text" name="login">
		Senha: <input type="password" name="pass">
		<input type="submit" value="Entrar">
	</form>
</body>
</html>