<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yahoo!!! From JSP</title>
</head>
<body>
<%
System.out.println(request.getParameter("name"));
Date date = new Date();
%>
<div>Current date is <%= date %></div>
My Second Page. Mr(s). ${name}
</body>
</html>