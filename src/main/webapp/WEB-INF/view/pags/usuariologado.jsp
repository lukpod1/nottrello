<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/style/style.css">
		<style>
			/* Remove the navbar's default margin-bottom and rounded borders */

			.navbar {
				margin-bottom: 0;
				border-radius: 0;
			}

			/* Set height of the grid so .sidenav can be 100% (adjust as needed) */

			.row.content {
				height: 450px
			}

			/* Set gray background color and 100% height */

			.sidenav {
				padding-top: 20px;
				background-color: #f1f1f1;
				height: 100%;
			}

			/* Set black background color, white text and some padding */

			footer {
				background-color: #555;
				color: white;
				padding: 15px;
			}

			/* On small screens, set height to 'auto' for sidenav and grid */

			@media screen and (max-width: 767px) {
				.sidenav {
					height: auto;
					padding: 15px;
				}
				.row.content {
					height: auto;
				}
			}
		</style>
		<title>Insert title here</title>
	</head>

	<body>

		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/usuario/logado">
						<img class="logo" src="/imgs/logo2.png">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">

					<ul class="nav navbar-nav navbar-right">

						<li>
							<a href="#">Perfil</a>
						</li>
						<li>
							<a href="/usuario/entrar">Sair</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
		







		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="projetos">Projetos
						<span class="caret"></span></button>
						<ul class="dropdown-menu">
						  <li><a href="#">HTML</a></li>
						  <li><a href="#">CSS</a></li>
						  <li><a href="#">JavaScript</a></li>
						</ul>
					  </div>
					
				</div>
				<div class="col-sm-8 text-left">
					<h1>Welcome</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur
						adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
						exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<hr>
					<h3>Test</h3>
					<p>Lorem ipsum...</p>
				</div>
				<div class="col-sm-2 sidenav">
					<div class="well">
						<p>ADS</p>
					</div>
					<div class="well">
						<p>ADS</p>
					</div>
				</div>
			</div>
		</div>







		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>

	</html>