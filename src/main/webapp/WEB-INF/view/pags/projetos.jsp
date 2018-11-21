<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<br>


<div class="row">
    <div class="col-sm-9">
        <input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">
    </div>
    <div class="col-sm-3">
        <button class="btn btn-primary" data-toggle="modal" data-id="${usuarioLogado.id}" data-target="#myModalProjeto">
            <i class="fas fa-plus"></i> Novo Projeto
        </button>
    </div>
</div>


<br>
<table class=" table table-hover" style="width:100%">

    <c:forEach var="projeto" items="${projetos}">
        <tbody id="myTable">

            <tr>
                <td>
                    <a href="/projeto/projeto?id=${projeto.id}">
                        <h5>${projeto.nome}</h5>
                    </a>

                    <small>${projeto.descricao}</small>
                </td>



            </tr>

        </tbody>
    </c:forEach>
</table>