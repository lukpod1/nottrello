<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<c:forEach var="projeto" items="${projetos}">
		<div class="col-sm-6" style="margin-bottom:30px;">

			<div class="card w-100 h-100" >
				<h5 class="card-header">${projeto.nome}</h5>
				<div class="card-body">

					<p class="card-text">${projeto.descricao}.</p>
					<a href="/projeto/projeto?id=${projeto.id}" class="btn btn-primary">mais detalhes</a>
				</div>
			</div>


		</div>
	</c:forEach>
</div>

<canvas class="line-graph">

</canvas>