<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
    </head>
    <body>
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Adicionar Tarefa</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <form method="post" action="/salvarTarefa" name="tarefa">

                <div class="modal-body">

                    <div class="form-group">
                        <input type="hidden" name="id">
                        <label for="nome">Nome:</label>
                        <input class="form-control" type="text" id="nome" name="nome" required/>
                        <label for="dataVencimento">Data de Vencimento:</label>
                        <input class="form-control" type="date" id="dataVencimento" name="dataVencimento" required/>
                        <label for="descricao">Descrição:</label>
                        <textarea class="form-control" name="descricao" rows="4" cols="50" style="resize: none">
                             
                        </textarea>

                    </div>



                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" style="margin-left: 20px;">Salvar</button>
                    <a href="/usuario/logado" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </body>
    </html>