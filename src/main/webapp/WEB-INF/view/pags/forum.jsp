<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

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
    <!-- navbar -->
    <c:import url="navbar.jsp"></c:import>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">

                <br>
                <h1>Fórum</h1>
                <p>Aqui você encontra as dúvidas de toda comunidade sobre qualquer assunto.</p>
                <p>Compartilhe seu conhecimento!</p>


                <br>

                <div class="row">

                    <div class="col-sm-9">
                        <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="btn btn-success" data-usuario="${usuarioLogado.id}" data-toggle="modal"
                            data-target="#myModalPergunta"><i class="fas fa-plus"></i> Nova Pergunta</a>


                    </div>

                </div>


                <br>

                <c:forEach var="pergunta" items="${perguntas}">


                    <table id="myTable" class="list-group">

                        <tr id="linha" class="list-group-item ">

                            <td>

                                <a href="/forum/respostas?id=${pergunta.id}" class="list-group-item-action ">
                                    <div class="d-flex w-100 justify-content">
                                        <h5 class="mb-2">${pergunta.titulo}</h5>


                                    </div>

                                    <div class=" w-100 justify-content">
                                        <p class="mb-1">${pergunta.detalhesPergunta}</p>

                                    </div>

                                    <small><img class="avatar" src="/imgs/padrao.jpg" style="width:30px;">
                                        ${pergunta.usuario.nomeUsuario}</small>


                                </a>


                            </td>


                        </tr>


                    </table>

                </c:forEach>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <c:import url="ModalFormPergunta.jsp"></c:import>
    <c:import url="ModalFormProjeto.jsp"></c:import>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <script src="../../../scripts/main.js"></script>

    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
        // $('#myModalProjeto').on('show.bs.modal', function (event) {
        //     var button = $(event.relatedTarget) // Button that triggered the modal
        //     var id = button.data('id') // Extract info from data-* attributes
        //     // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        //     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        //     var modal = $(this)
        //     modal.find('.modal-body input#id_usuario').val(id);
        // });
        // $('#myModalPergunta').on('show.bs.modal', function (event) {
        //     var button = $(event.relatedTarget) // Button that triggered the modal
        //     var id = button.data('id') // Extract info from data-* attributes
        //     // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        //     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        //     var modal = $(this)
        //     modal.find('.modal-body input#id_usuario').val(id);
        // });
    </script>

</body>

</html>