<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
System.out.println(request.getParameter("name"));
Date date = new Date();
%>
<h1>Welcome ${login}</h1>
<p>Your pass is ${pass}</p>
</body>
</html>