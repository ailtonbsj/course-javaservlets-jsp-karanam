<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My First JSP</title>
</head>
<body>
<div style="color:red;">${errorMessage}</div>
<form action="/login.do" method="post">
Enter your name <input type="text" name="name">
Enter your pass <input type="password" name="pass">
<input type="submit" value="Login">
</form>
</body>
</html>