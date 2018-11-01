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
                <a href="/usuario/logado"><img src="/imgs/logo1.jpg" class="logo"></a>
                

            </h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
                <div class="navbar-nav">

                    <a href="#" class="nav-item nav-link active" data-toggle="modal" data-projeto="${projeto.id}" data-target="#myModalTarefa">
                        <i class="fas fa-plus"></i> Nova Tarefa
                    </a>

                    <a class="nav-item nav-link active" href="/usuario/logado">${usuarioLogado.nomeUsuario}</a>
                    <a class="nav-item nav-link active" href="/usuario/logout">Sair</a>
                </div>
            </div>
        </nav>


    </div>

    <!-- content -->
    <div class="container-fluid text-left">
        <div class="row content">
            <ul class="sidebar navbar-nav bg-light">
                <h6 class="dropdown-header">Projetos:
                    <a href="#" data-usuario="${usuarioLogado.id}" data-toggle="modal" data-target="#myModalProjeto">
                        <i class="fas fa-plus"></i>
                    </a>
                </h6>


                <c:forEach var="projeto" items="${projetos}">
                    <li><a class="nav-item" href="/projeto/projeto?id=${projeto.id}">${projeto.nome}</a></li>
                </c:forEach>





            </ul>
            <div class="col-sm-8 text-left">
                <div id="app">
                    <br>
                    <h3>${projeto.nome}
                        <a href="/projeto/excluirProjeto?id=${projeto.id}">
                            <i class="far fa-times-circle" style="color: red;"></i>
                        </a>
                        <a href="#" data-toggle="modal" data-target="#myModalProjeto" data-usuario="${usuarioLogado.id}" data-id="${projeto.id}" data-nome="${projeto.nome}" data-vencimento="${projeto.dataVencimento}" data-descricao="${projeto.descricao}" >
                            <i class="fas fa-pencil-alt"></i>
                        </a>
                    </h3>
                    <br>
                    <h4>Tarefas</h4>

                    <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">

                    <table class=" table table-hover" style="width:100%">

                        <tr>
                            <th>Nome</th>
                            <th>Descrição</th>
                            <th>Vencimento</th>

                        </tr>
                        <c:forEach var="tarefa" items="${tarefas}">
                            <tbody id="myTable">
                                <tr>
                                    <td>${tarefa.nome}</td>
                                    <td id="descricao">${tarefa.descricao}</td>
                                    <td>${tarefa.dataVencimento}</td>

                                    <td>
                                        <a class="btn btn-success btn-sm" href="/tarefa/concluido/{{tarefa.id}}">
                                            <i class="far fa-check-circle"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <a class="btn btn-danger btn-sm" href="/excluirTarefa?id=${tarefa.id}">
                                            <i class="far fa-trash-alt"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <button id="btnEditar" class="btn btn-dark btn-sm"  data-toggle="modal" data-target="#myModalTarefa"
                                            	 data-id="${tarefa.id}" data-nome="${tarefa.nome}" data-vencimento="${tarefa.dataVencimento}"
                                            	 	 data-descricao="${tarefa.descricao}">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>

                        </c:forEach>


                    </table>

                </div>
            </div>
        </div>
    </div>

    <!--Modals-->
    <c:import url="ModalFormProjeto.jsp"></c:import>
    <c:import url="ModalFormTarefa.jsp"></c:import>



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

        $('#myModalTarefa').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) //Button that triggered the modal
            var id = button.data('id')
            var nome = button.data('nome') //Extract info from data-* attributes
            var descricao = button.data('descricao') //Extract info from data-* attributes
            var dtVencimento = button.data('vencimento') //Extract info from data-* attributes
            
            //If necessary, you could initiate an AJAX request here(and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            if(id!=null){
            	modal.find('.modal-title').text('Editar ' + nome)
            }            
            modal.find('.modal-body input#id').val(id)            
            modal.find('.modal-body input#nome').val(nome)
            modal.find('.modal-body input#data_vencimento').val(dtVencimento)
            modal.find('.modal-body textarea').val(descricao)
        })

        $('#myModalProjeto').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) //Button that triggered the modal
            var id = button.data('id')
            var nome = button.data('nome') //Extract info from data-* attributes
            var descricao = button.data('descricao') //Extract info from data-* attributes
            var dtVencimento = button.data('vencimento') //Extract info from data-* attributes
            var idUsuario = button.data('usuario')
            
            //If necessary, you could initiate an AJAX request here(and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            if(id!=null){
            	modal.find('.modal-title').text('Editar ' + nome)
            }            
            modal.find('.modal-body input#id').val(id)            
            modal.find('.modal-body input#nome').val(nome)
            modal.find('.modal-body input#data_vencimento').val(dtVencimento)
            modal.find('.modal-body textarea').val(descricao)
            modal.find('.modal-body input#usuario').val(idUsuario)
            
        })
    </script>
</body>

</html>