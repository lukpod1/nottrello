<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.nottrello.model.entity.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<title>Criar uma conta !Trello</title>
</head>
<body>
	
	
	<div class="container" style="width: 450px; margin-top: 100px">
		
		<h1>Criar uma Conta !Trello</h1>
		<p>ou<a href="/usuario/entrar"> entrar em sua conta</a></p>
		
		<form action="/usuario/registrar" method="post">
			
			<div class="form-group">
				<label for="nome">Nome:</label>
				 <input type="text" class="form-control" id="nome" name="nome" required="true">
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				 <input type="email" class="form-control" id="email" name="email" required="true">
			</div>
			<div class="form-group">
				<label for="senha">Senha:</label>
				 <input type="password" class="form-control" id="senha" name="senha" required="true">
			</div>
			<button type="submit" class="btn btn-primary">Criar nova conta</button>
			<a href="/home"> Voltar pro Inicio</a>	
		
		</form>

	</div>

</body>
</html>