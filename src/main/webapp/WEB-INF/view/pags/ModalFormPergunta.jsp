<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- The Modal -->
<div class="modal fade" id="myModalPergunta">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Adicionar Pergunta</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <form method="post" action="/forum/pergunta/salvar">
                <div class="modal-body">

                    <div class="form-group">
 
                        <input type="text" id="id" name="id">
                        <input type="text" value="${usuarioLogado.id}" name="usuario">
                        <label for="nome">Titulo: </label>

                        <input class="form-control" type="text" id="titulo" name="titulo">

                        <label for="descricao">Detalhes: </label>

                        <textarea class="form-control" name="detalhesPergunta" rows="5" cols="50" style="resize:none"></textarea>
                    </div>


                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Salvar</button>
                    <button type="button" class="btn btn-danger " data-dismiss="modal">Cancelar</button>
                </div>
            </form>
        </div>
    </div>
</div>