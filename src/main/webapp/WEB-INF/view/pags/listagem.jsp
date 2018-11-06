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

                    <a href="#" class="nav-item nav-link active" data-toggle="modal" data-projeto="${projeto.id}"
                        data-target="#myModalTarefa">
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
                        <a href="/projeto/excluirProjeto?id=${projeto.id}" id="excluirProjeto">
                            <i class="far fa-times-circle" style="color: red;"></i>
                        </a>
                        <a href="#" data-toggle="modal" data-target="#myModalProjeto" data-usuario="${usuarioLogado.id}"
                            data-id="${projeto.id}" data-nome="${projeto.nome}" data-vencimento="${projeto.dataVencimento}"
                            data-descricao="${projeto.descricao}">
                            <i class="fas fa-pencil-alt"></i>
                        </a>
                        <a href="/projeto/concluir?id=${projeto.id}">
                            <i class="far fa-check-circle" style="color: green;"></i>
                        </a>
                        <input type="button" id="alerta" value="ok" />
                    </h3>
                    <br>
                    <h4>Tarefas</h4>

                    <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">

                    <table class=" table table-hover" style="width:100%">

                        <tr>
                            <th>Nome</th>
                            <th>Descrição</th>
                            <th>Vencimento</th>
                            <th>Status</th>

                        </tr>
                        <c:forEach var="tarefa" items="${tarefas}">
                            <tbody id="myTable">
                                <c:choose>
                                    <c:when test="${tarefa.status.id ==1}">
                                        <tr>
                                            <td style="border-left: 12px solid yellow">${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>
                                            <td>
                                                <a class="btn btn-danger btn-sm" href="/excluirTarefa?id=${tarefa.id}"
                                                    id="excluirTarefa">
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
                                            <td style="border-left:12px solid orange">${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>


                                            <td>
                                                <a class="btn btn-danger btn-sm" href="/excluirTarefa?id=${tarefa.id}"
                                                    id="excluirTarefa">
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
                                        <tr style="border-left:12px solid green">
                                            <td>${tarefa.nome}</td>
                                            <td id="descricao">${tarefa.descricao}</td>
                                            <td>${tarefa.dataVencimento}</td>

                                            <td> ${tarefa.status.nome}</td>


                                            <td>
                                                <a class="btn btn-danger btn-sm" href="/excluirTarefa?id=${tarefa.id}"
                                                    id="excluirTarefa">
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

                </div>
            </div>
        </div>
    </div>

    <!--Modals-->
    <c:import url="ModalFormProjeto.jsp"></c:import>
    <c:import url="ModalFormTarefa.jsp"></c:import>



    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../../scripts/main.js"></script>
    <script>

        var alertBtn = document.getElementById('excluirProjeto');

        alertBtn.onclick = function () {
            swal({
                title: "Tem certeza?",
                text: "Uma vez deletado, você não poderá recuperá-la!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("Sua tareva foi deletada", {
                            icon: "success",
                        });
                    } else {
                        swal("Your imaginary file is safe!", {
                            icon: "error",
                        });

                    }
                })
        };

        var alertDelete = document.getElementById('excluirProjeto');
        alertDelete.onclick = function () {
            swal({
                title: "Tem certeza?",
                text: "Uma vez deletado, você não poderá recuperá-la!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: false
            },
                function () {
                    swal("Deletado", "Seu projeto foi deletado", "success");
                });
        }


// $(document).ready(function () {
//     $("#excluirTarefa").click(function () {
//         swal({
//             title: "Are you sure?",
//             text: "You will not be able to recover this imaginary file!",
//             type: "warning",
//             showCancelButton: true,
//             confirmButtonClass: "btn-danger",
//             confirmButtonText: "Yes, delete it!",
//             cancelButtonText: "No, cancel plx!",
//             closeOnConfirm: false,
//             closeOnCancel: false
//         }, function (isConfirm) {
//             if (isConfirm) {
//                 swal("Deleted!", "Your imaginary file has been deleted.", "success");
//             } else {
//                 swal("Cancelled", "Your imaginary file is safe :)", "error");
//             }
//         });
//     });
// });
    </script>
</body>

</html>