<%@page import="com.in28minutes.todo.Todo"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo</title>
</head>
<body>
<p>Your todos are:</p>
<ol>
<c:forEach items="${todos}" var="todo">
	<li>${todo.name}</li>
</c:forEach>
<%
List<Todo> todos =  (List<Todo>) request.getAttribute("todos");
for(Todo todo : todos) {
	request.setAttribute("item", todo.getName());
%>
<li>${item}</li>
<%
}
%>
</ol>
</body>
</html>