<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<br>

<input class="form-control" id="myInput" type="text" placeholder="Pesquisar..">

<br>
<table class=" table table-hover" style="width:100%">

    <c:forEach var="projeto" items="${projetos}">
        <tbody id="myTable">

            <tr>
                <td>
                    <a href="/projeto/projeto?id=${projeto.id}">
                        <h5>${projeto.nome}</h5>
                    </a>

                    <p>${projeto.descricao}</p>
                    <p>${projeto.dataVencimento}</p>
                </td>



            </tr>

        </tbody>
    </c:forEach>
</table>