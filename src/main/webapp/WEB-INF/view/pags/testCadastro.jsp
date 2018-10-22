<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/style/testCadastro.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <title>Criar uma conta !Trello</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-xl-9 mx-auto">
                <div class="card card-signin flex-row my-5">
                    <div class="card-img-left d-none d-md-flex">
                        <!-- Background image for card set in CSS! -->
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Criar uma Conta !Trello</h5>
                        <form class="form-signin">
                            <div class="form-label-group">
                                <input name="nome" type="text" id="inputUserame" class="form-control" placeholder="Username"
                                    required autofocus>
                                <label for="inputUserame">Nome</label>
                            </div>

                            <div class="form-label-group">
                                <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address"
                                    required>
                                <label for="inputEmail">E-mail</label>
                            </div>

                            <hr>

                            <div class="form-label-group">
                                <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Password"
                                    required>
                                <label for="inputPassword">Senha</label>
                            </div>

                            <div class="form-label-group">
                                <input name="senha" type="password" id="inputConfirmPassword" class="form-control" placeholder="Password"
                                    required>
                                <label for="inputConfirmPassword">Confirmar senha</label>
                            </div>

                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Cadastrar</button>
                            <a class="d-block text-center mt-2 small" href="/usuario/entrar">Entrar em sua conta</a>
                            <a class="d-block text-center mt-2 small" href="/home"> Voltar pro Inicio</a>
                           
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>

</html>