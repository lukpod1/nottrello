<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/style/style.css">
<title>Insert title here</title>
</head>
<body>
	<header> 
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="/usuario/logado">
					 <img class="logo" src="/imgs/logo2.png">
				</a>
			</div>
			<ul class="nav navbar-nav navbar-right" id="icones">
				<li><a href="#"><span class="glyphicon glyphicon-plus"></span> Adicionar Projeto</a></li>
				<li class="dropdown"><span class="btn btn-primary dropdown-toggle glyphicon glyphicon-cog" data-toggle="dropdown"></span>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="#">Perfil</a></li>
						<li><a href="/usuario/entrar">Sair</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>