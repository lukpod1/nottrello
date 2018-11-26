<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
	<link rel="stylesheet" type="text/css" href="/style/style.css">
    <title>${projeto.nome}</title>
</head>

<body>
    <div class="container-fluid h-100">
        <div class="row h-100">
            <c:import url="sideMenu.jsp"></c:import>
            <c:import url="sideBar.jsp"></c:import>
            <div class="col-md-9" id="main">
                <h3>Resumo - ${projeto.nome}</h3>

                <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
                             aria-controls="nav-home" aria-selected="true">Em cards</a>
                            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                             aria-controls="nav-profile" aria-selected="false">Em gráfico</a>
                            
                        </div>
                    </nav>
                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <c:import url="resumoCards.jsp"></c:import>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <input type="hidden" value="${qtPendente}" id="pendente">
                                <input type="hidden" value="${qtEmAndamento}" id="andamento">
                                <input type="hidden" value="${qtConcluido}" id="concluido">
                                <canvas class="biscoito" width="300" height="100"></canvas>
                        </div>


                    </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="/scripts/main.js"></script>
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
    
    
            // Adicionando dados para os modals
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