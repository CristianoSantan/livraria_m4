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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Booki | Atualizar Compra</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Atualizar Compra</h1>
		</header>
		
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="usuarios" value="usuario" />
			<jsp:param name="compras" value="compra" />
			<jsp:param name="compras" value="compra" />
		</jsp:include>
		
		<div class="container py-3">
           <form action="compra-update">
           		<input type="hidden" id="id" name="id" class="form-control" value="${compra.id}" />
				<h2 class="text-center">Criar</h2>
				<div class="form-group mb-3">
					<label for="data" class="form-label"> Data </label> <input
						type="text" id="data" name="data" class="form-control" value="${compra.data_compra}" />
				</div>

				<div class="form-group mb-3">
					<label for="livro" class="form-label"> Livro </label> 
					<select id="livro" name="livro" class="form-control">
						<option value="DEFAULT">${compra.livro.nome}</option>
						<jstl:forEach items="${listaLivros}" var="l">
							<option value="${l.id}">${l.nome}</option>
						</jstl:forEach>
					</select>
				</div>
				<div class="form-group mb-3">
					<label for="usuario" class="form-label"> Usuario </label> 
					<select id="usuario" name="usuario" class="form-control">
						<option value="DEFAULT">${compra.usuario.nome}</option>
						<jstl:forEach items="${listaUsuarios}" var="u">
							<option value="${u.id}">${u.nome}</option>
						</jstl:forEach>
					</select>
				</div>
				
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a href="compra" class="btn btn-danger"
					style="margin-left: 10px"> Cancelar </a>
			</form>
        </div>
		
    </main>
    
	<footer>
		<img
			src="./assets/img/recode.svg"
			alt="recodePro" />
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>