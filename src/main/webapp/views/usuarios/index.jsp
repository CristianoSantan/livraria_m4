<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="./assets/img/book-2-fill.svg" type="image/svg" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Booki | Usuarios</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Usuarios</h1>
		</header>

		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="usuarios" value="usuario" />
			<jsp:param name="livros" value="livro" />
			<jsp:param name="compras" value="compra" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<a href="./views/usuarios/create.jsp"
					class="btn btn-primary mb-2 botao1"> Novo Usuario </a>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">id</th>
							<th scope="col">Nome</th>
							<th scope="col">email</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaUsuarios}" var="u">
							<tr>
								<td>${u.id}</td>
								<td>${u.nome}</td>
								<td>${u.email}</td>
								<td>
									<div class="d-flex">
										<a href="usuario-edit?id=${u.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="usuario-delete?id=${u.id}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o autor ${u.nome}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>
			</div>
		</section>
	</main>
	<footer>
		<img src="./assets/img/recode.svg" alt="recodePro" />
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>