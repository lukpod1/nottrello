<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- The Modal -->
<div class="modal fade" id="myModalProjeto">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Adicionar Projeto</h4>
                <a  href="/projeto/projeto?id=${projeto.id}" class="close">&times;</a>
            </div>

            <!-- Modal body -->
            <form method="post" action="/projeto/salvar">

                <div class="modal-body">



                    <div class="form-group">

                        <input type="hidden" id="id" name="id">
                        <input type="text" id="usuario" name="usuario">
                        <label for="nome">Nome: </label>

                        <input class="form-control" type="text" id="nome" name="nome">

                        <label for="descricao">Descrição: </label>

                        <textarea class="form-control" name="descricao" rows="4" cols="50" style="resize:none"></textarea>

                        <label for="dataVenc">Data de vencimento: </label>

                        <input class="form-control" type="date" id="data_vencimento" name="dataVencimento">

                        <label for="etiquetaCot">Cor da Etiqueta: </label>

                        <input class="form-control" type="color" id="etiquetaCor" >


                    </div>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                    <a href="/projeto/projeto?id=${projeto.id}" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
</div>