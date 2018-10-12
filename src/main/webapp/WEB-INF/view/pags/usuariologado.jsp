<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="/style/style.css">
<link rel="stylesheet" type="text/css"
	href="/style/usuarioLogadoStylecss.css">
<title>Insert title here</title>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="#"> <img class="logo"
			src="/imgs/logo2.jpg">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<strong><a class="nav-item nav-link active"
					href="/projeto/novo">+ Adicionar Projeto</a></strong> <a
					class="nav-item nav-link" href="#">Perfil</a> <a
					class="nav-item nav-link" href="/usuario/entrar">Sair</a>
			</div>
		</div>
		</nav>


	</div>

	<!-- content -->
	<div class="container-fluid text-center">
		<div class="row content">
			<ul class="sidebar navbar-nav bg-light">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
					role="button" data-toggle="dropdown"> <i
						class="fas fa-fw fa-folder"></i> <span>Lista de Projetos</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="pagesDropdown">
						<h6 class="dropdown-header">Projetos:</h6>

						<c:forEach var="projeto" items="${projetos}">
							<a class="dropdown-item" href="#">${projeto.nome}</a>

						</c:forEach>
					</div></li>
			</ul>
			<div class="col-sm-8 text-left">
				<div id="app">
					<h3>${projeto.nome}</h3>
					<h4>Tarefas</h4>
					<form class="form-inline" method="post" action="/addTarefa">
						<div class="form-group">
							<input type="hidden" name="id" >
							<label for="nome">Nome:</label>
							<input type="text" id="nome" name="nome" />
							<div class="form-group">
								<label for="descricao" style="margin-left: 20px;">Descrição:</label>
								<input type="text" id="descricao" name="descricao" />
							</div>
							<button type="submit" class="btn btn-primary" style="margin-left: 20px;">Adicionar</button>
						</div>
					</form>
					
					<br>
					
					<table class="table">
						<tr>
							<th>Nome</th>
							<th>Descrição</th>
						</tr>
						<c:forEach var="tarefa" items="${tarefas}">
							<tr>
								<td>${tarefa.nome}</td>
								<td>${tarefa.descricao}</td>
								<td><a href="/excluirTarefa?id=${tarefa.id}" onclick="'return confirm(\'Deseja excluir esse contato?\')'">Excluir</a></td>
							</tr>
						</c:forEach>
					</table>

					
				</div>
			</div>
		</div>
	</div>

	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>

</html>