<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

    <link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
    <link rel="stylesheet" type="text/css" href="/style/style.css">
    <title>!Trello - Editar Perfil</title>
</head>
<body style="background-color:whitesmoke">
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
                <strong>
                    <a class="nav-item nav-link active" href="/usuario/logout">Sair</a>
                </strong>

            </div>
        </div>
    </nav>


</div>
<div class="row" style="margin:60px;  background-color:white; padding:40px; border-radius:22px;">

    <div class="col-sm-7" style="margin-left:40px">
        <h1>Perfil</h1>
        <hr>
        <form class="form-group" action="/usuario/salvarPerfil" method="post" enctype="multipart/form-data">
            <input type="hidden" value="${usuarioLogado.id}" name="id">

            <label for="">Nome Completo:</label>
            <input value="${usuarioLogado.nomeCompleto}" type="text" name="nomeCompleto" class="form-control" required="true" autofocus="true">
            
            <label for="">Nome do Usuario:</label>
            <input value="${usuarioLogado.nomeUsuario}" type="text" name="nomeUsuario" class="form-control" required="true" >

            <label for="">E-mail:</label>
            <input value="${usuarioLogado.email}" type="email" name="email" class="form-control" required="true" >
            
            <label for="">Senha:</label>
            <input value="${usuarioLogado.senha}" type="password" name="senha" class="form-control">

            <label for="">Foto do Perfil:</label>
            <input type="file" name="avatar" class="form-control">
			<br>
            <button class="btn btn-primary  text-uppercase" type="submit">Salvar Perfil</button>
            <a href="/usuario/logado/" class="btn btn-danger  text-uppercase">Cancelar</a>

        </form>
    </div>
    <div class="col-sm-4 text-center" style="margin-top:48px">
        <hr>
        <h6>Foto do Perfil</h6>
   
        
             
            
                <img class="avatar" src="/imgs/padrao.jpg">
   

    </div>
</div>


</body>
</html>