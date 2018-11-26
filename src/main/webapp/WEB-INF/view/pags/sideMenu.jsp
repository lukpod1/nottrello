<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
    <c:when test="${usuarioLogado != null }">
        <div class="col-md-1" id="menuSide">

            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        <h2><i class="fas fa-exclamation"></i></h2>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/forum/perguntas"><i class="fas fa-comments"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" data-toggle="modal" data-usuario="${usuarioLogado.id}"
                        data-target="#myModalProjeto"><i class="fas fa-plus"></i></a>
                </li>

                <li class="nav-item">
                    <!-- Bot�o dropright padr�o -->
                    <div class="btn-group dropup">
                        <a href="#" class="nav-link dropdown-toggle foto" data-toggle="dropdown">
                            <img src="/imgs/padrao.jpg">
                        </a>
                        <div class="dropdown-menu dropdown-menu-up " aria-labelledby="triggerId">
                            <a class="dropdown-item" href="/usuario/logado">Meus Projetos</a>
                            <a class="dropdown-item" href="/usuario/editarPerfil?id=${usuarioLogado.id}">Editar Perfil</a>
                            <a class="dropdown-item" href="/usuario/logout">Sair</a>
                        </div>
                    </div>

                </li>
            </ul>

        </div>
    </c:when>
    <c:otherwise>

        <div class="col-md-1" id="menuSide">

            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        <h2><i class="fas fa-exclamation"></i></h2>
                    </a>
                </li>
                <li class="nav-item">
                        <a class="nav-link active" href="/usuario/entrar">Entrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active btn btn-outline-light" href="/usuario/novo">Inscrever-se</a>
                    </li>

            </ul>
            

        </div>






        </nav>



    </c:otherwise>
</c:choose>