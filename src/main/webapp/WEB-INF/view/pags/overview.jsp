<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	/* Prevent the text contents of draggable elements from being selectable. */
		[draggable] {
		  -moz-user-select: none;
		  -khtml-user-select: none;
		  -webkit-user-select: none;
		  user-select: none;
		  /* Required to make elements draggable in old WebKit */
		  -khtml-user-drag: element;
		  -webkit-user-drag: element;
		}
		.column {
		  height: 150px;
		  width: 150px;
		  float: left;
		  border: 2px solid #666666;
		  background-color: #ccc;
		  margin-right: 5px;
		  -webkit-border-radius: 10px;
		  -ms-border-radius: 10px;
		  -moz-border-radius: 10px;
		  border-radius: 10px;
		  -webkit-box-shadow: inset 0 0 3px #000;
		  -ms-box-shadow: inset 0 0 3px #000;
		  box-shadow: inset 0 0 3px #000;
		  text-align: center;
		  cursor: move;
		}
		.column header {
		  color: #fff;
		  text-shadow: #000 0 1px;
		  box-shadow: 5px;
		  padding: 5px;
		  background: -moz-linear-gradient(left center, rgb(0,0,0), rgb(79,79,79), rgb(21,21,21));
		  background: -webkit-gradient(linear, left top, right top,
									   color-stop(0, rgb(0,0,0)),
									   color-stop(0.50, rgb(79,79,79)),
									   color-stop(1, rgb(21,21,21)));
		  background: -webkit-linear-gradient(left center, rgb(0,0,0), rgb(79,79,79), rgb(21,21,21));
		  background: -ms-linear-gradient(left center, rgb(0,0,0), rgb(79,79,79), rgb(21,21,21));
		  border-bottom: 1px solid #ddd;
		  -webkit-border-top-left-radius: 10px;
		  -moz-border-radius-topleft: 10px;
		  -ms-border-radius-topleft: 10px;
		  border-top-left-radius: 10px;
		  -webkit-border-top-right-radius: 10px;
		  -ms-border-top-right-radius: 10px;
		  -moz-border-radius-topright: 10px;
		  border-top-right-radius: 10px;
		}

		.column.over {
  border: 2px dashed #000;
}
</style>
<div class="row">
	<c:forEach var="projeto" items="${projetos}">
		<div class="col-sm-6" style="margin-bottom:30px;">

			<!-- <div id="columns">
				<div class="column" draggable="true">
					<header>A</header>
				</div>
				<div class="column" draggable="true">
					<header>B</header>
				</div>
				<div class="column" draggable="true">
					<header>C</header>
				</div>
			</div> -->

			<div class="card w-100 h-100">
				<h5 class="card-header">${projeto.nome}</h5>
				<div class="card-body">

					<p class="card-text">${projeto.descricao}.</p>
					<a href="/projeto/projeto?id=${projeto.id}" class="btn btn-primary">mais detalhes</a>
				</div>
			</div>


		</div>
	</c:forEach>
</div>

<input type="hidden" value="${qtPendente}" id="pendente">
<input type="hidden" value="${qtEmAndamento}" id="andamento">
<input type="hidden" value="${qtConcluido}" id="concluido">
<canvas class="bar" width="300" height="100"></canvas>

<script>
	function handleDragStart(e) {
		this.style.opacity = '0.4';  // this / e.target is the source node.
	}

	var cols = document.querySelectorAll('#columns .column');
	[].forEach.call(cols, function (col) {
		col.addEventListener('dragstart', handleDragStart, false);
	});

	function handleDragStart(e) {
		this.style.opacity = '0.4';  // this / e.target is the source node.
	}

	function handleDragOver(e) {
		if (e.preventDefault) {
			e.preventDefault(); // Necessary. Allows us to drop.
		}

		e.dataTransfer.dropEffect = 'move';  // See the section on the DataTransfer object.

		return false;
	}

	function handleDragEnter(e) {
		// this / e.target is the current hover target.
		this.classList.add('over');
	}

	function handleDragLeave(e) {
		this.classList.remove('over');  // this / e.target is previous target element.
	}

	var cols = document.querySelectorAll('#columns .column');
	[].forEach.call(cols, function (col) {
		col.addEventListener('dragstart', handleDragStart, false);
		col.addEventListener('dragenter', handleDragEnter, false);
		col.addEventListener('dragover', handleDragOver, false);
		col.addEventListener('dragleave', handleDragLeave, false);
	});

	function handleDrop(e) {
  // this / e.target is current target element.

  if (e.stopPropagation) {
    e.stopPropagation(); // stops the browser from redirecting.
  }

  // See the section on the DataTransfer object.

  return false;
}

function handleDragEnd(e) {
  // this/e.target is the source node.

  [].forEach.call(cols, function (col) {
    col.classList.remove('over');
  });
}

var cols = document.querySelectorAll('#columns .column');
[].forEach.call(cols, function(col) {
  col.addEventListener('dragstart', handleDragStart, false);
  col.addEventListener('dragenter', handleDragEnter, false)
  col.addEventListener('dragover', handleDragOver, false);
  col.addEventListener('dragleave', handleDragLeave, false);
  col.addEventListener('drop', handleDrop, false);
  col.addEventListener('dragend', handleDragEnd, false);
});
</script>