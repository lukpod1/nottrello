<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

    <link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
    <link rel="stylesheet" type="text/css" href="/style/style.css">
    <title>!Trello</title>
</head>

<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar navbar-dark" style="background: #17baef;">
            <h1 class="logo float-left">

                <img src="/imgs/logo1.jpg" class="logo">

            </h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
                <div class="navbar-nav">

                    <a href="#" class="nav-item nav-link active" data-toggle="modal" data-target="#myModalTarefa">
                        <i class="fas fa-plus"></i> Nova Tarefa
                    </a>

                    <a class="nav-item nav-link active" href="/{{projeto.usuario.id}}">{{projeto.usuario}}</a>
                    <a class="nav-item nav-link active" href="/usuario/entrar">Sair</a>
                </div>
            </div>
        </nav>


    </div>

    <!-- content -->
    <div class="container-fluid text-left">
        <div class="row content">
            <ul class="sidebar navbar-nav bg-light">
                <h6 class="dropdown-header">Projetos:
                    <a href="#" data-toggle="modal" data-target="#myModalProjeto">
                        <i class="fas fa-plus"></i>
                    </a>
                </h6>


                <c:forEach var="projeto" items="${projetos}">
                    <li><a class="nav-item" href="/{{projeto.usuario.id}}/projeto/{{projeto.id}}">{{projeto.nome}}</a></li>
                </c:forEach>
               
             



            </ul>
            <div class="col-sm-8 text-left">
                <div id="app">
                    <br>
                    <h3>${projeto.nome}
                        <a href="/projeto/excluir/{{projeto.id}}">
                            <i class="far fa-times-circle" style="color: red;"></i>
                        </a>
                    </h3>
                    <br>
                    <h4>Tarefas</h4>

                    <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">

                    <table class=" table table-hover" style="width:100%">

                        <tr>
                            <th>Nome</th>
                            <th>Descrição</th>
                            <th>Data de Criação</th>
                            <th>Vencimento</th>

                        </tr>
                        {% for tarefa in tarefas %}
                        <tbody id="myTable">
                            <tr>
                                <td>{{tarefa.nome}}</td>
                                <td id="descricao">{{tarefa.descricao}}</td>
                                <td>{{tarefa.data_criacao}}</td>
                                <td>{{tarefa.data_vencimento}}</td>

                                <td>
                                    <a class="btn btn-success btn-sm" href="/tarefa/concluido/{{tarefa.id}}">
                                        <i class="far fa-check-circle"></i>
                                    </a>
                                </td>
                                <td>
                                    <a class="btn btn-danger btn-sm" href="/tarefa/excluir/{{tarefa.id}}">
                                        <i class="far fa-trash-alt"></i>
                                    </a>
                                </td>
                                <td>
                                    <a id="btnEditar" href="/tarefa/editar/{{tarefa.id}}" class="btn btn-dark btn-sm">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                        {% endfor %}
                    </table>

                </div>
            </div>
        </div>
    </div>

    <!--Modals-->
    {% include "app/modalTarefa.html" %} {% include "app/modalProjeto.html" %}


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
            // $('#myModal').on('show.bs.modal', function (event) {
            //     var button = $(event.relatedTarget) //Button that triggered the modal
            //     var recipientNome = button.data('nome') //Extract info from data-* attributes
            //     var recipientDescricao = button.data('descricao') //Extract info from data-* attributes
            //     var recipientDtVencimento = button.data('vencimento') //Extract info from data-* attributes
            //     //If necessary, you could initiate an AJAX request here(and then do the updating in a callback).
            //     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            //     var modal = $(this)
            //     modal.find('.modal-title').text('Editar ' + recipientNome)
            //     modal.find('.modal-body input#id_nome').val(recipientNome)
            //     modal.find('.modal-body input#id_data_vencimento').val(recipientDtVencimento)
            //     modal.find('.modal-body textarea').val(recipientDescricao)
            // })
    </script>
</body>

</html>