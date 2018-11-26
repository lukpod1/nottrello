<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- The Modal -->
<div class="modal fade" id="myModalTarefa">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">Adicionar Tarefa</h4>
				<a href="#" data-dismiss="modal" class="close">&times;</a>
			</div>

			<!-- Modal body -->
			<form method="post" action="/salvarTarefa">

				<div class="modal-body">

					<div class="form-group">
						<input type="hidden" name="id" id="id">
						<input type="hidden" value="${projeto.id}" name="projeto">
						<label for="nome">Nome:</label>
						<input class="form-control" type="text" id="nome" name="nome" required autofocus />
						<label for="dataVencimento">Data de Vencimento:</label>
						<input class="form-control" type="date" id="data_vencimento" name="dataVencimento" required />
						<label for="inputGroupSelect01">Status:</label>
						<select name="status" class="custom-select" id="inputGroupSelect01">
							<c:forEach var="status" items="${status}">
								<option value="${status.id}">${status.nome}</option>
							</c:forEach>
						</select>
						<label for="descricao">Descrição:</label>
						<textarea class="form-control" name="descricao" rows="4" cols="50" style="resize: none">

						</textarea>

					</div>



				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary" style="margin-left: 20px;">Salvar</button>
					<a href="#" data-dismiss="modal" class="btn btn-danger">Cancelar</a>
				</div>
			</form>
		</div>
	</div>
</div>