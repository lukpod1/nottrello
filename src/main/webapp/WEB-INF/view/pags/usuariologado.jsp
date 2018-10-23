<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html lang="pt-br">

		<head>
			<meta charset="UTF-8" />
			<meta http-equiv="Content-Type" content="text/html">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

			<link rel="stylesheet" type="text/css" href="/style/style.css">
			<link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
			<title>Insert title here</title>
		</head>

		<body>
			<div>
				<nav class="navbar navbar-expand-lg navbar navbar-dark" style="background: #17baef;">
					<h1 class="logo float-left">

						<img src="/imgs/logo2.png" class="logo">

					</h1>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
					 aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<strong>
								<a class="nav-item nav-link active" data-toggle="modal" data-target="#myModalProjeto" href="#">+ Adicionar Projeto</a>
							</strong>

							<a class="nav-item nav-link" href="#">Perfil</a>
							<a class="nav-item nav-link" href="/usuario/logout">Sair</a>
						</div>
					</div>
				</nav>


			</div>

			<!-- content -->
			<div class="container-fluid text-center">
				<div class="row content">
					<ul class="sidebar navbar-nav bg-light">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown">
								<i class="fas fa-fw fa-folder"></i>
								<span>Lista de Projetos</span>
							</a>
							<div class="dropdown-menu" aria-labelledby="pagesDropdown">
								<h6 class="dropdown-header">Projetos:</h6>

								<c:forEach var="projeto" items="${projetos}">
									<a class="dropdown-item" href="#">${projeto.nome}</a>

								</c:forEach>
							</div>
						</li>
					</ul>
					<div class="col-sm-8 text-left">
						<div id="app">
							<h3>${projeto.nome}</h3>
							<h4>Tarefas</h4>
							<button class="btn btn-primary" data-toggle="modal" data-target="#myModalTarefa">
								<i class="fas fa-plus"></i>
							</button>


							<br>
							<input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">
							<table class="table table-hover">
								<tr>
									<th>Nome</th>
									<th>Descrição</th>
									<th>Data de Vencimento</th>
								</tr>
								<c:forEach var="tarefa" items="${tarefas}">
									<tbody id="myTable">
										<tr>
											<td>${tarefa.nome}</td>
											<td>${tarefa.descricao}</td>
											<td>${tarefa.dataVencimento}</td>
											<td>
												<td>
													<a class="btn btn-success btn-sm"   href="/tarefa/concluido/{{tarefa.id}}">
														<i class="far fa-check-circle"></i>
													</a>
												</td>
												<td>
													<a class="btn btn-danger btn-sm" href="/excluirTarefa?id=${tarefa.id}">
														<i class="far fa-trash-alt"></i>
													</a>
												</td>
												<td>
													<a class="btn btn-dark btn-sm" href="/editarTarefa?id=${tarefa.id}" >
														<i class="fas fa-edit"></i>
													</a>
												</td>

											</td>
										</tr>
									</tbody>

								</c:forEach>
							</table>


						</div>
					</div>
				</div>
			</div>

			<c:import url="ModalFormTarefa.jsp"></c:import>
			<c:import url="ModalFormProjeto.jsp"></c:import>


			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
			<script>
				$(document)
					.ready(
						function () {
							$("#myInput")
								.on(
									"keyup",
									function () {
										var value = $(this).val()
											.toLowerCase();
										$("#myTable tr")
											.filter(
												function () {
													$(this)
														.toggle(
															$(
																this)
																.text()
																.toLowerCase()
																.indexOf(
																	value) > -1)
												});
									});
						});
			</script>
		</body>

		</html>