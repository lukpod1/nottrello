<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-2" id="sideBar">
	<ul class="nav justify-content-start">
		<li class="nav-item">
			<h6>
				${projeto.nome}
				<a href="#" data-toggle="modal" data-target="#myModalProjeto" data-usuario="${usuarioLogado.id}" data-id="${projeto.id}"
				 data-nome="${projeto.nome}" data-vencimento="${projeto.dataVencimento}" data-descricao="${projeto.descricao}"><i
					 class="fas fa-pencil-alt"></i>
				</a>
				<a href="#" data-toggle="modal" data-target="#myAlertaDeleteProjeto" data-id="${projeto.id}">
					<i class="far fa-times-circle" style="color: red;"></i>

				</a>


			</h6>
		</li>

		<li class="nav-item"><a class="nav-link" href="/projeto/resumo/projeto?id=${projeto.id}"><i class="far fa-clipboard"></i>
				Resumo</a></li>
		<li class="nav-item"><a class="nav-link" href="/projeto/projeto?id=${projeto.id}"><i class="fas fa-bars"></i>
				Detalhes</a></li>

	</ul>
</div>
