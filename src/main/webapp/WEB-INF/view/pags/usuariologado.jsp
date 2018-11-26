<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>


	<meta charset="UTF-8" />
	<meta http-equiv="Content-Type" content="text/html">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">


	<link rel="stylesheet" type="text/css" href="/style/style.css">
	<title>!Trello</title>
</head>

<body>
	<div class="container-fluid h-100">
		<div class="row h-100">
			<c:import url="sideMenu.jsp"></c:import>
			<div class="col-md-1" id="sideBar" style="background-color:white; margin-left: 30px;"></div>
			<!-- <c:import url="sideBar.jsp"></c:import>
			<div class="col-md-9" id="main">
				<nav>
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"
						 aria-selected="true">Visão Geral</a>
						<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile"
						 aria-selected="false">Projetos</a>

					</div>
				</nav>
				<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						<c:import url="overview.jsp"></c:import>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
							<c:import url="projetos.jsp"></c:import>
					</div>



				</div>
			</div>
		</div> -->
		<div class="col-md-9">
				<section id="tabs">
						<div class="container" style="padding:50px">
							<h3>Projetos</h3>
							<div class="row">
								<div class="col-md-12 ">
									<nav>
										<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
											 aria-controls="nav-home" aria-selected="true">Visão Geral</a>
											<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
											 aria-controls="nav-profile" aria-selected="false">Projetos</a>

										</div>
									</nav>
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
											<c:import url="overview.jsp"></c:import>
										</div>
										<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
											<c:import url="projetos.jsp"></c:import>
										</div>


									</div>

								</div>

							</div>
					</section>
		</div>
			<!-- content -->
			<!-- <div class="container-fluid text-center">
				<div class="row" style="margin:30px;  background-color:white; padding:20px; border-radius:22px;height: auto;">





					<section id="tabs">
						<div class="container">

							<div class="row">
								<div class="col-md-12 ">
									<nav>
										<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
											 aria-controls="nav-home" aria-selected="true">Visão Geral</a>
											<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
											 aria-controls="nav-profile" aria-selected="false">Projetos</a>

										</div>
									</nav>
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
											<c:import url="overview.jsp"></c:import>
										</div>
										<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
											<c:import url="projetos.jsp"></c:import>
										</div>


									</div>

								</div>

							</div>
					</section>


				</div>
			</div> -->







			<!--Modals-->
			<c:import url="ModalFormProjeto.jsp"></c:import>



			<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
			<script src="/scripts/main.js"></script>
			<script>
				var ctx = document.getElementsByClassName("bar");
				var qtProjetoPendente = document.getElementById('pendente');
				var qtProjetoEmAndamento = document.getElementById('andamento');
				var qtProjetoConcluido = document.getElementById('concluido');

				var bar = new Chart(ctx, {
					type: 'pie',
					data: {
						labels: ['Pendente', 'Em Andamento', 'Concluído'],
						datasets: [{
							label: 'Quantidade de Projetos',
							data: [qtProjetoPendente.value, qtProjetoEmAndamento.value, qtProjetoConcluido.value],
							backgroundColor: ["#fdcb6e", "#e17055", "#00b894"],
						}]
					},
					options: {
						legend: { display: true },
						title: {
							display: true,
							text: 'Quantidade de Projetos'
						}
					}

				});
			</script>
</body>

</html>