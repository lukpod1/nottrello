<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<h4>Novo projeto</h4>

<form action="/projeto/salvar" method="post">
	<input type="hidden" id="id" name="id">
	<label for="nome">Nome: </label>
	<input type="text" id= "nome" name="nome">
	
	<button class="btn btn-primary" type="submit">Salvar Projeto</button>

</form>

</body>
</html>