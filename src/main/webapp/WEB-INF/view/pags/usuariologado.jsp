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
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<title>Insert title here</title>
</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="#"> <img class="logo"
		src="/imgs/logo2.png">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse justify-content-end"
		id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="nav-item nav-link active" href="#">Perfil <span
				class="sr-only">(current)</span>
			</a> <a class="nav-item nav-link" href="/usuario/entrar">Sair</a>

		</div>
	</div>
	</nav>

	<!-- content -->



	<div class="container-fluid text-center">
		<div class="row content">
			<div></div>
			<ul class="sidebar navbar-nav bg-light">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
					role="button" data-toggle="dropdown"> <i
						class="fas fa-fw fa-folder"></i> <span>Lista de Projetos</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="pagesDropdown">
						<h6 class="dropdown-header">Projetos:</h6>
						<a class="dropdown-item" href="login.html">Projeto 1</a> <a
							class="dropdown-item" href="register.html">Projeto 2</a>

					</div></li>

			</ul>
			<div>
		

			<div class="col-sm-8 text-left">
				<div id="app">
					<h3>Projeto 01</h3>
					<h4>Tarefas</h4>
					<form class="form-inline">
						<div class="form-group">
							<input type="hidden" name="id">
							<label for="nome">Nome:</label>
							<input type="text" id="nome" name="nome" />
						
							<label for="descricao">Descrição:</label>
							<input type="text" id="descricao" name="descricao"/>
							
							<button type = "submit" class="btn btn-primary">Adicionar</button>
						</div>
						
						
						

					</form>					

					
					<jsp:useBean id="projetoModel" class="br.com.nottrello.model.entity.Projeto"></jsp:useBean>
					
					
						<table class="table">
							<tr>
								<th>Nome</th>
								<th>Descrição</th>
							</tr>
							<c:forEach var="tarefas" items="${projetoModel.tarefas}">
								
								<tr>
									
									<td>${tarefas.nome}</td>
									<td>${tarefas.descricao}</td>
								</tr>
							</c:forEach>
						</table>
						
					<table class="table" id = "tabelaPre">
						
						
					
					</table>
					
					
						
			
			</div>

		</div>
		
		<script src = "../scripts/app.js"></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>

</html>