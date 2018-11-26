<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-1" id="sideBar" style="background-color:white;">
        <input type="hidden" value="${qtPendente}" id="pendente">
        <input type="hidden" value="${qtEmAndamento}" id="andamento">
        <input type="hidden" value="${qtConcluido}" id="concluido">
        <canvas class="biscoito" width="300" height="200"></canvas>
</div>