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
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			 aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<strong>
						<a class="nav-item nav-link active" href="/usuario/entrar">Sair</a>
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
					<small>${usuarioLogado.email}</small>
				</li>
			</ul>
			<div class="col-sm-8 text-left">
				<div id="app">
					<br>
					<button class="btn btn-primary" data-toggle="modal" data-target="#myModalProjeto">
						<i class="fas fa-plus"></i>
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

				</div>
			</div>
		</div>
	</div>

	<!--Modals-->
	<c:import url="ModalFormProjeto.jsp"></c:import>
	


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function () {
			$("#myInput").on("keyup", function () {
				var value = $(this).val().toLowerCase();
				$("#myTable tr").filter(function () {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});
		});
				// $('#myModal').on('show.bs.modal', function (event) {
				//     var button = $(event.relatedTarget) //Button that triggered the modal
				//     var recipientNome = button.data('nome') //Extract info from data-* attributes
				//     var recipientDescricao = button.data('descricao') //Extract info from data-* attributes
				//     var recipientDtVencimento = button.data('vencimento') //Extract info from data-* attributes
				//     //If necessary, you could initiate an AJAX request here(and then do the updating in a callback).
				//     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
				//     var modal = $(this)
				//     modal.find('.modal-title').text('Editar ' + recipientNome)
				//     modal.find('.modal-body input#id_nome').val(recipientNome)
				//     modal.find('.modal-body input#id_data_vencimento').val(recipientDtVencimento)
				//     modal.find('.modal-body textarea').val(recipientDescricao)
				// })
	</script>
</body>

</html>