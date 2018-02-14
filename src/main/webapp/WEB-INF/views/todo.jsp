<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todos</title>
</head>
<body>
<p>Your Todo's are:</p>
<ol>
	<c:forEach items="${todos}" var="todo">
		<li>${todo.name}</li>
	</c:forEach>
</ol>
</body>
</html>