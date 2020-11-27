<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
﻿
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CRUD com Bootstrap 3</title>

<link href="././resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Receita do dia</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">

					<li class="nav-item mx-1"><a class="nav-link"
						href="../dashboard.html">Administração do site <svg
								width="1em" height="1em" viewBox="0 0 16 16"
								class="bi bi-shield-fill-check" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
									d="M8 .5c-.662 0-1.77.249-2.813.525a61.11 61.11 0 0 0-2.772.815 1.454 1.454 0 0 0-1.003 1.184c-.573 4.197.756 7.307 2.368 9.365a11.192 11.192 0 0 0 2.417 2.3c.371.256.715.451 1.007.586.27.124.558.225.796.225s.527-.101.796-.225c.292-.135.636-.33 1.007-.586a11.191 11.191 0 0 0 2.418-2.3c1.611-2.058 2.94-5.168 2.367-9.365a1.454 1.454 0 0 0-1.003-1.184 61.09 61.09 0 0 0-2.772-.815C9.77.749 8.663.5 8 .5zm2.854 6.354a.5.5 0 0 0-.708-.708L7.5 8.793 6.354 7.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
							  </svg>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="main" class="container-fluid" style="margin-top: 50px">

		<h2 class="page-header">Adicionar Usuário</h2>
		<h4>${mensagem2}</h4>

		<form method="POST" action="usuarioServlet" id="main_form">
			<div class="row">
				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">Id</label> <input type="text"
						class="form-control" id="exampleInputEmail1" disabled
						name="id_user" value="${us.id_user}"
						placeholder="Preenchimento automático">
				</div>
				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">Usuário</label> <input type="text"
						class="form-control" id="exampleInputEmail1" name="usuario"
						value="${us.usuario}" placeholder="Digite o nome de usuário">
				</div>
				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">Email</label> <input type="email"
						class="form-control" id="exampleInputEmail1" name="email"
						value="${us.email}" placeholder="Digite o email">
				</div>
				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">Senha</label> <input
						type="password" class="form-control" id="exampleInputEmail1"
						name="senha" value="${us.senha}" placeholder="Digite o valor">
				</div>
			</div>

			

			<div class="row">
				<div class="col-md-12">
					<button type="submit" value="Enviar" class="btn btn-primary">Salvar</button>
				</div>
			</div>
			<hr/>
		</form>
	</div>

	<div id="top" class="row mx-4">
		<div class="col-sm-6">
			<h2>Usuários ADM</h2>
			<h4>${mensagem}</h4>
		</div>

	</div>
	<!-- /#top -->


	<hr />
	<div id="list" class="row">

		<div class="table-responsive col-md-12 mx-4">
			<table class="table table-striped" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>ID</th>
						<th>Usuário</th>
						<th>Email</th>
						<th class="actions">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${usuarios}">
						<tr>
							<th>${u.id_user}</th>
							<th>${u.usuario}</th>
							<th>${u.email}</th>
							<td class="actions"><a href=usuarioServlet?acao=excluir&id_user=${u.id_user}> Excluir</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>

	</div>
	<!-- /#list -->

	<div id="bottom" class="row">
		<div class="col-md-12 mx-4">
			<ul class="pagination">
				<li class="disabled"><a>&lt; Anterior</a></li>
				<li class="disabled"><a>1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
			</ul>
			<!-- /.pagination -->
		</div>
	</div>
	<!-- /#bottom -->
	</div>
	<!-- /#main -->


	<script src="././resources/bootstrap/js/jquery.min.js"></script>
	<script src="././resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>