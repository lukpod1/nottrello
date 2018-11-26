<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
    <div class="col-md-4">

        <div class="card" style="border: solid #FFEB3B;">
            <div class="card-header">PENDENTE - ${qtPendente}</div>
            <div class="card-body">
                <c:forEach var="tarefa" items="${tarefas}">

                    <c:if test="${tarefa.status.id == 1 }">


                        <h5 class="card-title">${tarefa.nome}</h5>
                        <p class="card-text">${tarefa.descricao }</p>
                        <hr>


                    </c:if>

                </c:forEach>
            </div>
        </div>
    </div>

    <div class="col-md-4">

        <div class="card" style="border: solid #FF5722;">
            <div class="card-header">EM ANDAMENTO - ${qtEnAndamento}</div>
            <div class="card-body">
                <c:forEach var="tarefa" items="${tarefas}">

                    <c:if test="${tarefa.status.id == 2 }">


                        <h5 class="card-title">${tarefa.nome}</h5>
                        <p class="card-text">${tarefa.descricao }</p>
                        <hr>


                    </c:if>

                </c:forEach>
            </div>
        </div>
    </div>
    <div class="col-md-4">

        <div class="card" style="border: solid #4CAF50;">
            <div class="card-header">CONCLUÍDA - ${qtConcluido}</div>
            <div class="card-body">
                <c:forEach var="tarefa" items="${tarefas}">

                    <c:if test="${tarefa.status.id == 3 }">


                        <h5 class="card-title">${tarefa.nome}</h5>
                        <p class="card-text">${tarefa.descricao }</p>
                        <hr>


                    </c:if>

                </c:forEach>
            </div>
        </div>
    </div>





</div>