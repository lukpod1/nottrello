<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- The Modal -->
<div class="modal fade" id="myAlertaTarefa">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal body -->
            <div class="modal-body">
                <center>
                    <h1><i class="fas fa-3x fa-exclamation" style="color: #F8D486;"></i></h1>
                    <h3>Tem certeza?</h3>
                    <p>Você não poderá recuperar está tarefa!</p>
                    <a href="/projeto/projeto?id=${projeto.id}" class="btn btn-info">Cancelar</a>
                    <a class="btn btn-danger delete">Sim, quero excluir!</a>
                </center>


            </div>
      
        </div>
    </div>
</div>