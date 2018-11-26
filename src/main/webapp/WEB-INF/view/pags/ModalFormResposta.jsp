<!-- The Modal -->

<div class="modal fade" id="myModalResposta">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Adicionar Resposta</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <form method="post" action="/forum/resposta/salvar">
                <div class="modal-body">


                    <div class="form-group">

                        <input type="hidden" id="id" name="id">
                        <input type="hidden" value="${usuarioLogado.id}" name="usuario">
                        <input type="hidden" value="${pergunta.id}" name="pergunta">
                        

                        <textarea class="form-control" name="conteudo" rows="4" cols="50" style="resize:none" autofocus></textarea>

                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Enviar</button>
                    <button type="button" class="btn btn-danger " data-dismiss="modal">Cancelar</button>
                </div>
            </form>
        </div>
    </div>
</div>