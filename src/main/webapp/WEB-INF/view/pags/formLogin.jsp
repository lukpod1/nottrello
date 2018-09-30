<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<title>Criar uma conta !Trello</title>
	</head>

	<body>
		<div class="container" style="width: 430px; margin-top: 100px; ">
			<div>
				<h1>Fazer Login no !Trello ${usuario.nome}</h1>
				<p>ou<a href="/formCadastro"> criar uma conta</a></p>
					
					<form action="/logar" method="post">
						<div class="form-group">
							<label for="email">Email:</label>
							<input type="email" class="form-control" id="email" required="true">
						</div>
						<div class="form-group">
							<label for="pwd">Senha:</label>
							<input type="password" class="form-control" id="pwd" required="true">
						</div>						
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Entrar</button>
							<a href="/home"> Voltar</a>	
						
						</div>	
										
						
					</form>
			</div>

		</div>

	</body>

	</html>