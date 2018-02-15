<%@include file="../common/header.jspf"  %>

<nav class="navbar navbar-default">
	<a href="/" class="navbar-brand">Brand</a>
	<ul class="nav navbar-nav">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="/list-todo.do">Todos</a></li>
		<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="/login.do">Login</a></li>
	</ul>
</nav>

<div class="container">
	<c:if test="${errorMessage != null}">
		<div class="alert alert-danger">${errorMessage}</div>
	</c:if>
	<form action="/login.do" method="post">
	Enter your name <input type="text" name="name">
	Enter your pass <input type="password" name="pass">
	<input type="submit" value="Login">
	</form>
</div>

<%@include file="../common/footer.jspf"  %>