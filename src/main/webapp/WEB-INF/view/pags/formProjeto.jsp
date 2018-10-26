<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<h4>Editar projeto</h4>
	<form action="/projeto/salvar" method="post">
	<input type="hidden" id="id" name="id" value="${projeto.id}">
			
	<table>
		<tr>
			<td><label for="nome">Nome: </label></td>
			<td><input class="form-controll" value="${projeto.nome}" type="text" id= "nome" name="nome"></td>
		
		</tr>
		<tr>
			<td><label for="descricao">Descri��o: </label></td>
			<td><input class="form-controll " value="${projeto.descricao}" type="text" id= "descricao" name="descricao">	</td>
		</tr>
		<tr>
			<td><label for="dataVenc">Data de vencimento: </label></td>
			<td><input class="form-controll"value="${projeto.dataVencimento}" type="date" id= "dataVenc" name="dataVencimento"></td>
		</tr>
		<tr>
			<td><label for="etiquetaCot">Cor da Etiqueta: </label></td>
			<td><input class="form-controll" type="color"  id= "etiquetaCot" name="etiquetaCot"></td>
		</tr>
	
	</table>
	
	<button class="btn btn-primary" type="submit">Salvar Projeto</button>

</form>

</div>


</body>
</html>