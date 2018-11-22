<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<nav class="navbar navbar-expand-lg navbar navbar-dark"
			style="background: #3f9ebd;">

			<a class="navbar-brand" href="/home"><img src="/imgs/logo1.png" class="logo"></a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNavAltMarkup">		


				<div class="dropdown">
					<a href="#" class=" dropdown-toggle" id="dropdownMenuButton"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						style="color: white; text-decoration: none;"> <img
						class="avatar" src="/imgs/padrao.jpg" style="width: 30px">
					</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="/usuario/logado">Logado como <strong>${usuarioLogado.nomeUsuario}</strong></a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/usuario/logado">Meus Projetos</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/forum/perguntas">Fórum</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/usuario/editarPerfil?id=${usuarioLogado.id}">Editar Perfil</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/usuario/logout">Sair</a>
					</div>
				</div>
		</nav>
	
	
	






