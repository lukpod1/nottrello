<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- The Modal -->
<div class="modal fade" id="alertaLogue">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
		<!-- Modal Header -->
            <div class="modal-header">                
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            
            <div class="modal-body">
                <center>
                    <h1><i class="fas fa-3x fa-exclamation" style="color: #fdcb6e;"></i></h1>
                    <h4>Você tem que estar logado!</h4>
                    <br>                    
                    <a href="/usuario/entrar" class="btn btn-success">Entrar</a> ou
                    <a href="/usuario/novo"  class="btn btn-info">Inscrever-se</a>
                    
                    
                </center>


            </div>
           
        </div>
    </div>
</div>