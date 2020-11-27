<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lista Usuarios</title>
</head>
<body>
	<form method="POST" action="usuarioServlet">
		Codigo <input type="text" disabled name="id_user" value="${us.id_user}" /><br>
		Usuario <input type="text" name="usuario" value="${us.usuario}"/><br>
		Email <input type="text" name="email" value="${us.email}"  /><br>
		Senha <input type="text" name="senha" value="${us.senha}"  /><br>
		<input type="submit" value="Enviar" />
	</form>


	<h2>${mensagem}</h2>

	<h4>Usuarios Cadastrados</h4>
	<table>
		<tr>
			<th>Codigo</th>
			<th>Usuario</th>
			<th>Email</th>
			<th>Senha</th>
			<th>Ações</th>
		</tr>

		<c:forEach var="u" items="${usuarios}">
			<tr>
				<th>${u.id_user}</th>
				<th>${u.usuario}</th>
				<th>${u.email}</th>
				<th>${u.senha}</th>
				<th>${u.senha}</th>
				<th><a href=usuarioServlet?acao=excluir&id_user=${u.id_user}> Excluir</a></th>
			</tr>
		</c:forEach>
	</table>

</body>
</html>