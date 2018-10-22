<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/style/testLogin.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <title>Entrar no !Trello</title>
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
                        <h5 class="card-title text-center">Fazer Login no !Trello</h5>
                        <form class="form-signin" action="logar" method="GET">
                            <div class="form-label-group">
                                <input name="nome" type="text" id="nome" class="form-control" placeholder="Usuario"
                                    required autofocus>
                                <label for="nome">Usuario</label>
                            </div>

                            <div class="form-label-group">
                                <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha"
                                    required>
                                <label for="inputPassword">Password</label>
                            </div>


                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                            <a class="d-block text-center mt-2 small" href="/usuario/novo">Criar conta</a>
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