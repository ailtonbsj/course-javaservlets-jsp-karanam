<%@include file="../common/header.jspf"  %>
<%@include file="../common/navigation.jspf"  %>

<div class="container">
	<h2>Your New Action item</h2>
	<form action="/add-todo.do" method="post">
	<fieldset class="form-group">
	<label for="todo">Description </label> <input class="form-control" type="text" name="todo">
	</fieldset>
	<fieldset class="form-group">
	<label for="category">Category </label> <input class="form-control" type="text" name="category">
	</fieldset>
	<input class="btn btn-success" type="submit" value="Add">
	</form>
</div>

<%@include file="../common/footer.jspf"  %>