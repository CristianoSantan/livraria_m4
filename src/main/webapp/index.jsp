<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="./assets/img/book-2-fill.svg" type="image/svg" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Booki</title>
</head>
<body>
	<main>
		<header class="header">
			<h1><span><i class="ri-book-2-line"></i></span>Booki</h1>
		</header>
		
		<jsp:include page="./components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="usuarios" value="usuario" />
			<jsp:param name="livros" value="livro" />
			<jsp:param name="compras" value="compra" />
		</jsp:include>
		
    </main>
    
	<footer>
		<img
			src="./assets/img/recode.svg"
			alt="recodePro" />
	</footer>

	<script src="script.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>