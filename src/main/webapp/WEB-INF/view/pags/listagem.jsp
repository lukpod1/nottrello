<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="UTF-8" />
	<meta http-equiv="Content-Type" content="text/html">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

	<link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
	<link rel="stylesheet" type="text/css" href="/style/style.css">
	<title>!Trello</title>
</head>

<body>




	<div class="container-fluid h-100">
		<div class="row h-100">
			<!-- SideBars -->
			<c:import url="sideMenu.jsp"></c:import>
			<c:import url="sideBar.jsp"></c:import>
			<!-- content -->
			<div class="col-md-9" id="main">
				<h3>Detalhes</h3>
				<h4>Tarefas</h4>
				<input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">
				<table class=" table" style="width:100%">

					<tr>
						<th>Nome</th>
						<th>Descrição</th>
						<th>Data de Criação</th>
						<th>Vencimento</th>
						<th>Status</th>
						<th>Ações</th>

					</tr>

					<c:forEach var="tarefa" items="${tarefas}">


						<tbody id="myTable">
							<c:choose>
								<c:when test="${tarefa.status.id ==1}">
									<tr>
										<td style="border-left: 10px solid #FFEB3B">${tarefa.nome}</td>
										<td id="descricao">${tarefa.descricao}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${tarefa.dataCriacao}" />
										</td>
										<td>${tarefa.dataVencimento}</td>

										<td> ${tarefa.status.nome}</td>
										<td>
											<a href="#" data-toggle="dropdown" aria-expanded="false">
												<i class="fas fa-ellipsis-h"></i>
											</a>
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
												<a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModalTarefa" data-id="${tarefa.id}"
												 data-nome="${tarefa.nome}" data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">Editar</a>

												<div class="dropdown-divider"></div>
												<a class="dropdown-item" data-toggle="modal" data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa"
												 href="/excluirTarefa?id=${tarefa.id}">Excluir</a>

											</div>

										</td>
									</tr>

								</c:when>
								<c:when test="${tarefa.status.id ==2}">
									<tr>
										<td style="border-left:10px solid #FF5722">${tarefa.nome}</td>
										<td id="descricao">${tarefa.descricao}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${tarefa.dataCriacao}" />
										</td>
										<td>${tarefa.dataVencimento}</td>

										<td> ${tarefa.status.nome}</td>


										<td>
											<a href="#" data-toggle="dropdown" aria-expanded="false">
												<i class="fas fa-ellipsis-h"></i>
											</a>
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
												<a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModalTarefa" data-id="${tarefa.id}"
												 data-nome="${tarefa.nome}" data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">Editar</a>

												<div class="dropdown-divider"></div>
												<a class="dropdown-item" data-toggle="modal" data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa"
												 href="/excluirTarefa?id=${tarefa.id}">Excluir</a>


											</div>

										</td>
									</tr>

								</c:when>
								<c:otherwise>
									<tr style="border-left:10px solid #4CAF50">
										<td>${tarefa.nome}</td>
										<td id="descricao">${tarefa.descricao}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${tarefa.dataCriacao}" />
										</td>

										<td>${tarefa.dataVencimento}</td>

										<td> ${tarefa.status.nome}</td>


										<td>
											<a href="#" data-toggle="dropdown" aria-expanded="false">
												<i class="fas fa-ellipsis-h"></i>
											</a>
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
												<a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModalTarefa" data-id="${tarefa.id}"
												 data-nome="${tarefa.nome}" data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">Editar</a>

												<div class="dropdown-divider"></div>
												<a class="dropdown-item" data-toggle="modal" data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa"
												 href="/excluirTarefa?id=${tarefa.id}">Excluir</a>

											</div>

										</td>


									</tr>
								</c:otherwise>

							</c:choose>

						</tbody>

					</c:forEach>
					<tr>
						<form action="/salvarTarefa" method="post">
							<input type="hidden" name="id" id="id">
							<input type="hidden" value="${projeto.id}" name="projeto">
							<td><input class="form-control" name="nome" placeholder="Nome" type="text" autofocus></td>
							<td><input class="form-control" name="descricao" placeholder="Descrição" type="text"></td>
							<td colspan="2"><input class="form-control" name="dataVencimento" placeholder="Vencimento" type="date"></td>
							<td>
								<select name="status" class="custom-select">
									<c:forEach var="status" items="${status}">
										<option value="${status.id}">${status.nome}</option>
									</c:forEach>


								</select>
							</td>

							<td><button type="submit" class="btn btn-info">Adicionar</button></td>

						</form>


					</tr>
				</table>



			</div>




		</div>
	</div>




	<!--Modals-->
	<c:import url="ModalFormProjeto.jsp"></c:import>
	<c:import url="ModalFormTarefa.jsp"></c:import>
	<c:import url="alertaExcluirTarefa.jsp"></c:import>
	<c:import url="alertaExcluirProjeto.jsp"></c:import>
	<c:import url="alertaConcluirProjeto.jsp"></c:import>





	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="/scripts/main.js"></script>
	<script>
		var biscoito = document.getElementsByClassName('biscoito');
		var qtTarefaPendente = document.getElementById('pendente');
		var qtTarefaEmAndamento = document.getElementById('andamento');
		var qtTarefaConcluido = document.getElementById('concluido');
		var myPieChart = new Chart(biscoito, {
			type: 'doughnut',
			data: {
				labels: ['Pendente', 'Em Andamento', 'Concluído'],
				datasets: [{
					label: "Tarefas",
					data: [qtTarefaPendente.value, qtTarefaEmAndamento.value, qtTarefaConcluido.value],
					backgroundColor: ["#FFEB3B", "#FF5722", "#4CAF50"],
				}],
			},
		});



	</script>
</body>

</html>