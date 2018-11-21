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
    <!-- navbar -->
    <c:import url="navbar.jsp"></c:import>

    <!-- content -->
    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-2" id="sidebar">
                <br>
                <h5>Projetos</h5>
                <ul style="text-decoration:none; list-style:none;">
                    <c:forEach var="projeto" items="${projetos}">
                        <li><a class="nav-item" href="/projeto/projeto?id=${projeto.id}">${projeto.nome}</a></li>
                    </c:forEach>

                </ul>


            </div>
            <!-- <div class="col-sm-1">
                <hr class="side">
            </div> -->
            <div class="col-sm-7">


                <div id="app">
                    <br>
                    <h4>Tarefas</h4>
                    <div class="row">

                        <div class="col-sm-9">
                            <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">
                        </div>
                        <div class="col-md-3">
                            <button class="btn btn-primary" data-toggle="modal" data-projeto="${projeto.id}"
                                data-target="#myModalTarefa">
                                <i class="fas fa-plus"></i> Nova Tarefa
                            </button>
                        </div>

                    </div>

                    <!-- <div class="pagination">
                        <span class="step-links">
                            {% if tarefas.has_previous %}
                            <a href="?page={{ tarefas.previous_page_number }}"><i class="fas fa-backward"></i></a>
                            {% endif %}

                            <span class="current">
                                Página {{ tarefas.number }} de {{ tarefas.paginator.num_pages }}.
                            </span>

                            {% if tarefas.has_next %}
                            <a href="?page={{ tarefas.next_page_number }}"><i class="fas fa-forward"></i></a>
                            {% endif %}
                        </span>
                    </div> -->
                    <table class=" table table-hover" style="width:100%">

                        <tr>
                            <th>Nome</th>
                            <th>Descrição</th>
                            <th>Data de Criação</th>
                            <th>Vencimento</th>
                            <th>Status</th>

                        </tr>

                        <c:forEach var="tarefa" items="${tarefas}">


                            <tbody id="myTable">
                                <c:choose>
                                    <c:when test="${tarefa.status.id ==1}">
                                        <tr>
                                            <td style="border-left: 12px solid #FFEB3B">${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>
                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm" data-toggle="modal"
                                                    data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa">
                                                    <i class="far fa-trash-alt"></i>
                                                </a>
                                            </td>
                                            <td>
                                                <button id="btnEditar" class="btn btn-dark btn-sm" data-toggle="modal"
                                                    data-target="#myModalTarefa" data-id="${tarefa.id}" data-nome="${tarefa.nome}"
                                                    data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                            </td>
                                        </tr>

                                    </c:when>
                                    <c:when test="${tarefa.status.id ==2}">
                                        <tr>
                                            <td style="border-left:12px solid #FF5722">${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>


                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm" data-toggle="modal"
                                                    data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa">
                                                    <i class="far fa-trash-alt"></i>
                                                </a>
                                            </td>
                                            <td>
                                                <button id="btnEditar" class="btn btn-dark btn-sm" data-toggle="modal"
                                                    data-target="#myModalTarefa" data-id="${tarefa.id}" data-nome="${tarefa.nome}"
                                                    data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                            </td>
                                        </tr>

                                    </c:when>
                                    <c:otherwise>
                                        <tr style="border-left:12px solid #4CAF50">
                                            <td>${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>


                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm" data-toggle="modal"
                                                    data-target="#myAlertaTarefa" data-id="${tarefa.id}" id="excluirTarefa">
                                                    <i class="far fa-trash-alt"></i>
                                                </a>
                                            </td>
                                            <td>
                                                <button id="btnEditar" class="btn btn-dark btn-sm" data-toggle="modal"
                                                    data-target="#myModalTarefa" data-id="${tarefa.id}" data-nome="${tarefa.nome}"
                                                    data-vencimento="${tarefa.dataVencimento}" data-descricao="${tarefa.descricao}">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:otherwise>

                                </c:choose>

                            </tbody>

                        </c:forEach>
                    </table>
                    <!-- <div class="pagination">
                        <span class="step-links">
                            {% if tarefas.has_previous %}
                            <a href="?page={{ tarefas.previous_page_number }}"><i class="fas fa-backward"></i></a>
                            {% endif %}

                            <span class="current">
                                Página {{ tarefas.number }} de {{ tarefas.paginator.num_pages }}.
                            </span>

                            {% if tarefas.has_next %}
                            <a href="?page={{ tarefas.next_page_number }}"><i class="fas fa-forward"></i></a>
                            {% endif %}
                        </span>
                    </div> -->


                </div>

            </div>


            <div class="col-sm-3" id='grafico'>
                <br>
                <h5>${projeto.nome}
                     
                    <a href="#" data-toggle="modal" data-target="#myModalProjeto" data-usuario="${usuarioLogado.id}"
                        data-id="${projeto.id}" data-nome="${projeto.nome}" data-vencimento="${projeto.dataVencimento}"
                        data-descricao="${projeto.descricao}" style="float:right">
                        <i class="fas fa-pencil-alt"></i>
                    </a>
                    <a href="#" data-toggle="modal" data-target="#myAlertaDeleteProjeto" data-id="${projeto.id}" style="float:right;">
                        <i class="far fa-times-circle" style="color: red;"></i>
                    </a>
                    <c:if test="${projeto.status.id != 3}">
                        <a href="#" data-toggle="modal" data-target="#myAlertaConcluirProjeto" data-id="${projeto.id}"
                            style="float:right;">
                            <i class="far fa-check-circle" style="color: green;"></i>
                        </a>
                    </c:if>
                </h5>

                <input type="hidden" value="${qtPendente}" id="pendente">
                <input type="hidden" value="${qtEmAndamento}" id="andamento">
                <input type="hidden" value="${qtConcluido}" id="concluido">
                <canvas class="biscoito" width="300" height="200"></canvas>

            </div>

        </div>
    </div>




    <!--Modals-->
    <c:import url="ModalFormProjeto.jsp"></c:import>
    <c:import url="ModalFormTarefa.jsp"></c:import>
    <c:import url="alertaExcluirTarefa.jsp"></c:import>
    <c:import url="alertaExcluirProjeto.jsp"></c:import>
    <c:import url="alertaConcluirProjeto.jsp"></c:import>





    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../../scripts/main.js"></script>
    <script>
        var biscoito = document.getElementsByClassName('biscoito');
        var qtTarefaPendente = document.getElementById('pendente');
        var qtTarefaEmAndamento = document.getElementById('andamento');
        var qtTarefaConcluido = document.getElementById('concluido');
        var myPieChart = new Chart(biscoito, {
            type: 'doughnut',
            data: {
                labels: ['Pendente', 'Em Andamento', 'Concluído'],
                datasets: [{
                    label: "Tarefas",
                    data: [qtTarefaPendente.value, qtTarefaEmAndamento.value, qtTarefaConcluido.value],
                    backgroundColor: ["#FFEB3B", "#FF5722", "#4CAF50"],
                }],
            },
        });
        $('a[data-target="#myAlertaTarefa"]').on('click', function (event) {
            event.preventDefault();
            var id = $(this).data('id');
            $('.delete').attr('href', '/excluirTarefa?id=' + id);
            $('#myAlertaTarefa').modal('show');
        });
        $('a[data-target="#myAlertaDeleteProjeto"]').on('click', function (event) {
            event.preventDefault();
            var id = $(this).data('id');
            $('.delete').attr('href', '/projeto/excluirProjeto?id=' + id);
            $('#myAlertaDeleteProjeto').modal('show');
        });
        $('a[data-target="#myAlertaConcluirProjeto"]').on('click', function (event) {
            event.preventDefault();
            var id = $(this).data('id');
            $('.ok').attr('href', '/projeto/concluir?id=' + id);
            $('#myAlertaConcluirProjeto').modal('show');
        });
    </script>
</body>

</html>