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
<h4>Editar ${tarefa.nome}</h4>
	 <form method="post" action="/salvarTarefa" name="tarefa">

                

                    <div class="form-group">
                        <input type="hidden" name="id">
                        <label for="nome">Nome:</label>
                        <input class="form-control"  value="${tarefa.nome}" type="text" id="nome" name="nome" required/>
                        <label for="dataVencimento">Data de Vencimento:</label>
                        <input class="form-control" value="${tarefa.dataVencimento}" type="date" id="dataVencimento" name="dataVencimento" required/>
                        <label for="descricao">Descrição:</label>
                        <textarea class="form-control" value="${tarefa.descricao}" name="descricao" rows="4" cols="50" style="resize: none">
                             
                        </textarea>

                   
				<button class="btn btn-primary" type="submit">Salvar Tarefa</button>


               </form>
	
	

</form>

</div>


</body>
</html>
    
    
    
    
    
    