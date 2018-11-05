<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Nottrello - Home</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- FontAwesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9"
        crossorigin="anonymous"></script>
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/plugins/prism/prism.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="/style/theme-1.css">
    <!-- GitHub Button -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</head>

<body data-spy="scroll">

    <!-- ******HEADER****** -->
    <header id="header" class="header">
        <div class="container">
            <h1 class="logo float-left">
                <a class="scrollto" href="#promo">
                    <span class="logo-title">!Trello</span>
                </a>
            </h1>
            <!--//logo-->
            <nav id="main-nav" class="main-nav navbar-expand-md float-right" role="navigation">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--//nav-toggle-->

                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item sr-only">
                            <a class="nav-link scrollto" href="#promo">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link scrollto" href="#about">Sobre</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link scrollto" href="#features">Como funciona</a>
                        </li>

                        <li class="nav-item last">
                            <a class="nav-link scrollto" href="#contact">Contatos</a>
                        </li>
                    </ul>
                    <!--//nav-->
                </div>
                <!--//navabr-collapse-->
            </nav>
            <!--//main-nav-->
        </div>
    </header>
    <!--//header-->

    <!-- ******PROMO****** -->
    <section id="promo" class="promo section offset-header">
        <div class="container text-center">
            <h2 class="title">!
                <span class="highlight">Trello</span>
            </h2>
            <p class="intro">Nottrello, seu gerenciador de projetos preferido!</p>
            <div class="btns">
                <a class="btn btn-cta-secondary" href="/usuario/entrar">Entrar</a>
                <a class="btn btn-cta-primary" href="/usuario/novo">Inscrever-se</a>
            </div>
            <ul class="meta list-inline">
                <li class="list-inline-item">
                    <a href="https://github.com/lukpod1/nottrello" target="_blank">Ver no GitHub</a>
                </li>

                <li class="list-inline-item">Criado por: Jaicke Santos, José Lucas e Matheus Alves</li>
            </ul>
            <!--//meta-->
        </div>
        <!--//container-->
        <!-- <div class="barra-divide">
            <div class="social-media-inner container text-center">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item github-star" style="margin-top:15px;">
                        <a class="github-button" href="https://github.com/lukpod1/nottrello" data-icon="octicon-star" aria-label="Star lukpod1/nottrello on GitHub">Star</a>
                    </li>
                    <li class="list-inline-item github-fork">
                        
                        <a class="github-button" href="https://github.com/lukpod1/nottrello" aria-label=" @nottrello on GitHub">Follow @nottrello</a>
                    </li>
                </ul>
            </div>
        </div> -->
        <p class="gh-btns text-center">
            <iframe src="https://ghbtns.com/github-btn.html?user=lukpod1&repo=nottrello&type=star&count=true"
                frameborder="0" scrolling="0" width="120px" height="30px"></iframe>
            <iframe src="https://ghbtns.com/github-btn.html?user=lukpod1&repo=nottrello&type=watch&count=true&v=2"
                frameborder="0" scrolling="0" width="120px" height="30px"></iframe>
            <iframe src="https://ghbtns.com/github-btn.html?user=lukpod1&repo=nottrello&type=fork&count=true"
                frameborder="0" scrolling="0" width="120px" height="30px"></iframe>

        </p>

    </section>
    <!--//promo-->

    <!-- ******ABOUT****** -->
    <section id="about" class="about section">
        <div class="container">
            <h2 class="title text-center">O que é o Not Trello?</h2>
            <p class="intro text-center">O Nottrello é uma ferramenta de gerenciamento de projetos em listas e que pode
                ser ajustado com a necessidade
                do usuário. Você pode utilizá-lo para organizar suas tarefas de trabalho, seus planos de viagens, as
                prioridades
                de seus estudos, entre muitos outros. </p>

        </div>
        <!--//container-->
    </section>
    <!--//about-->

    <!-- ******FEATURES****** -->
    <section id="features" class="features section">
        <div class="container text-center">
            <h2 class="title">Como funciona</h2>
            <ul class="feature-list list-unstyled">
                <li>
                    <i class="fas fa-check"></i> Fully responsive</li>
                <li>
                    <i class="fas fa-check"></i> HTML5 + CSS3</li>
                <li>
                    <i class="fas fa-check"></i> Built on Bootstrap 4</li>
                <li>
                    <i class="fas fa-check"></i> SCSS source files included</li>
                <li>
                    <i class="fas fa-check"></i> 1000+ FontAwesome 5 icons</li>
                <li>
                    <i class="fas fa-check"></i> 4 colour schemes</li>
                <li>
                    <i class="fas fa-check"></i> Compatible with all modern browsers</li>
            </ul>
        </div>
        <!--//container-->
    </section>
    <!--//features-->


    <!--//features-->


    <!--//how-->

    <!-- ******CONTACT****** -->
    <section id="contact" class="contact section has-pattern">
        <div class="container">
            <div class="contact-inner">
                <h2 class="title  text-center">Conheça nossa equipe</h2>
                <p class="intro  text-center">Esperamos que nossa ferramenta organize seus projetos.
                    <br>Sinta-se à vontade para entrar em contato se tiver alguma dúvida ou sugestão.
                    <div class="author-message">
                        <div class="profile">
                            <img class="img-fluid" src="assets/images/jaicke.jpg" alt="" />
                        </div>
                        <!--//profile Jaicke-->
                        <div class="author-message">
                            <div class="profile">
                                <img class="img-fluid" src="/imgs/jaicke.jpg" alt="" />
                            </div>
                            <!--//profile-->
                            <div class="speech-bubble">
                                <h3 class="sub-title">Jaicke Santos</h3>
                                <p>
                                    <a href="https://github.com/jaicke" target="_blank">Siga-me no GitHub</a> e conheça
                                    o meu repositório.</p>

                            </div>
                            <!--//speech-bubble-->
                        </div>
                        <!-- Profile Lucas -->
                        <div class="author-message">
                            <div class="profile">
                                <img class="img-fluid" src="/imgs/lucas.jpg" alt="" />
                            </div>
                            <!--//profile-->
                            <div class="speech-bubble">
                                <h3 class="sub-title">José Lucas</h3>
                                <p>
                                    <a href="https://instagram.com/lukpod1" target="_blank">Siga-me no instagram</a> e
                                    conheça meu portifólio

                                    <a href="https://lukpod1.github.io" target="_blank"> Aqui</a>.</p>

                            </div>
                            <!--//speech-bubble-->
                        </div>
                        <!-- Profile Matheus -->
                        <div class="author-message">
                            <div class="profile">
                                <img class="img-fluid" src="/imgs/matheus.jpg" alt="" />
                            </div>
                            <!--//profile-->
                            <div class="speech-bubble">
                                <h3 class="sub-title">Matheus Alves</h3>
                                <p>
                                    <a href="https://github.com/MatheusAlves00" target="_blank">Siga-me no GitHub</a> e
                                    conheça o meu repositório.</p>

                            </div>
                            <!--//speech-bubble-->
                        </div>
                        


                            </ul>
                        </div>
                        <!--//info-->
                    </div>
                    <!--//contact-inner-->
            </div>
            <!--//container-->
    </section>
    <!--//contact-->

    <!-- ******FOOTER****** -->
    <footer class="footer">
        <div class="container text-center">
            <small class="copyright">© Copyright 2018. Todos os direitos reservados.</small>
        </div>
        <!--//container-->
    </footer>
    <!--//footer-->

    <!-- Javascript -->
    <script type="text/javascript" src="assets/plugins/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="assets/plugins/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
    <script type="text/javascript" src="assets/plugins/prism/prism.js"></script>
    <script type="text/javascript" src="/scripts/main.js"></script>


</body>

</html>