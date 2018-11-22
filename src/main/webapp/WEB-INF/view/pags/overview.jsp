<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
<div class="row">
	<c:forEach var="projeto" items="${projetos}">
		<div class="col-sm-6" style="margin-bottom:30px;">

			<div class="card w-100 h-100">
				<h5 class="card-header">${projeto.nome}</h5>
				<div class="card-body">

					<p class="card-text">${projeto.descricao}.</p>
					<a href="/projeto/projeto?id=${projeto.id}" class="btn btn-primary">Detalhes</a>
				</div>
			</div>


		</div>
	</c:forEach>
</div>

<input type="hidden" value="${qtPendente}" id="pendente">
<input type="hidden" value="${qtEmAndamento}" id="andamento">
<input type="hidden" value="${qtConcluido}" id="concluido">
<canvas class="bar" width="300" height="100"></canvas>

