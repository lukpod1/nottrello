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

    <link rel="stylesheet" type="text/css" href="/style/usuarioLogadoStylecss.css">
    <link rel="stylesheet" type="text/css" href="/style/style.css">
    <title>!Trello - Editar Perfil</title>
</head>

<body style="background-color:whitesmoke">
    <div class="container-fluid h-100">
        <div class="row h-100">
            <c:import url="sideMenu.jsp"></c:import>
            <div class="col-md-1" id="sideBar" style="background-color:white;"></div>
            <div class="col-md-8" id="main">

                <h1>Perfil</h1>
                <hr>
                <form class="form-group" action="/usuario/salvarPerfil" method="post" enctype="multipart/form-data">
                    <input type="hidden" value="${usuarioLogado.id}" name="id">

                    <label for="">Nome Completo:</label>
                    <input value="${usuarioLogado.nomeCompleto}" type="text" name="nomeCompleto" class="form-control"
                        required="true" autofocus="true">

                    <label for="">Nome do Usuario:</label>
                    <input value="${usuarioLogado.nomeUsuario}" type="text" name="nomeUsuario" class="form-control"
                        required="true">

                    <label for="">E-mail:</label>
                    <input value="${usuarioLogado.email}" type="email" name="email" class="form-control" required="true">

                    <label for="">Senha:</label>
                    <input value="${usuarioLogado.senha}" type="password" name="senha" class="form-control">

                    <label for="">Foto do Perfil:</label>
                    <input type="file" name="avatar" class="form-control">
                    <br>
                    <button class="btn btn-primary  text-uppercase" type="submit">Salvar Perfil</button>
                    <a href="/usuario/logado/" class="btn btn-danger  text-uppercase">Cancelar</a>

                </form>
            </div>
            <div class="col-md-3 text-center" style="margin-top:48px">
                <br>
                    <hr>
                    <h6>Foto do Perfil</h6>
    
                    <img class="avatar" src="/imgs/padrao.jpg">
                </div>



        </div>
    </div>

    <c:import url="ModalFormProjeto.jsp"></c:import>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>


</html>