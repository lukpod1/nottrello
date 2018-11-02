<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

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
	<div>
		<nav class="navbar navbar-expand-lg navbar navbar-dark" style="background: #17baef;">
			<h1 class="logo float-left">

				<img src="/imgs/logo1.jpg" class="logo">

			</h1>
			<button class="navbar-toggler" type="button" data-toggle="collapse"  data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			 aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<strong>
						<a class="nav-item nav-link active" href="/usuario/logout">Sair</a>
					</strong>

				</div>
			</div>
		</nav>


	</div>

	<!-- content -->
	<div class="container-fluid text-center">
		<div class="row content">
			<ul class="sidebar navbar-nav bg-light">
				<li>
					<img class="avatar" src="/imgs/padrao.jpg">
				</li>
				<li>
					<h4>${usuarioLogado.nomeUsuario}</h4>
					<h6>${usuarioLogado.nomeCompleto}</h6>
					<h6><a href="/usuario/editarPerfil?id=${usuarioLogado.id}">Editar Perfil</a></h6>
					
					
				</li>
			</ul>
			<div class="col-sm-8 text-left">
				<div id="app">
					<br>
					<button class="btn btn-primary" data-toggle="modal" data-usuario="${usuarioLogado.id}" data-target="#myModalProjeto">
						<i class="fas fa-plus"></i> Novo Projeto
					</button>
					<br>
					<h4>Meus Projetos</h4>

					<input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">


					<table class=" table table-hover" style="width:100%">

						<c:forEach var="projeto" items="${projetos}">
							<tbody id="myTable">

								<tr>
									<td>
										<a href="/projeto/projeto?id=${projeto.id}">
											<h5>${projeto.nome}</h5>
										</a>
	
										<small>${projeto.descricao}</small>
									</td>
	
	
	
								</tr>
	
							</tbody>
						</c:forEach>
					</table>
					<canvas class="line-graph">
						
					</canvas>
				</div>
			</div>
		</div>

		
		
		
	</div>

	<!--Modals-->
	<c:import url="ModalFormProjeto.jsp"></c:import>
	

	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="/scripts/main.js"></script>
</body>

</html>