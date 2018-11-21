<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

    <link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
    <link rel="stylesheet" type="text/css" href="/style/style.css">
    <title>Fórum - NotTrello</title>
</head>

<body>
    <c:import url="navbar.jsp"></c:import>

    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <br>
                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <a href="#" class="list-group-item-action flex-column align-items-start " style="text-decoration: none;">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">${pergunta.titulo}</h5>
                                <small>${pergunta.data_criacao}</small>
                            </div>

                            <div class=" w-100 justify-content-end">
                                <p class="mb-1">${pergunta.detalhesPergunta}</p>

                            </div>

                            <small><img class="avatar" src="/imgs/padrao.jpg" style="width:30px;">
                                ${pergunta.usuario.nomeUsuario}</small>

                        </a>

                    </li>
                </ul>

                <a href="#" data-toggle="modal" data-pergunta="${pergunta.id}" data-id="${usuarioLogado.id}"
                    data-target="#myModalResposta">Responder</a>

                <hr>

                <span class="badge badge-primary badge-pill">${qtResposta} Respostas</span>

                <hr>
                <ul class="list-group">
                    <c:forEach var="resposta" items="${respostas}">
                        <li class="list-group-item list-group-item-light">
                            <div class="d-flex w-100 justify-content-between">
                                <small>
                                    <img class="avatar" src="/imgs/padrao.jpg" style="width:30px;">
                                    ${resposta.usuario.nomeUsuario}

                                </small>
                                <p>${resposta.data_criacao}</p>
                                
                            </div>
                            <p>${resposta.conteudo}</p>
                        </li>
                    </c:forEach>
                </ul>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <c:import url="ModalFormResposta.jsp"></c:import>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../../scripts/main.js"></script>
    <script>
        $('#myModalResposta').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var id = button.data('id') // Extract info from data-* attributes
            var pergunta = button.data('pergunta')
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            modal.find('.modal-body input#id_usuario').val(id)
            modal.find('.modal-body input#id_pergunta').val(pergunta)
        });
    </script>
</body>

</html>