<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<ul class="nav justify-content-center">
	<li class="nav-item"><a class="nav-link active"
		aria-current="page" href="<%=request.getParameter("home")%>">Home</a></li>
	<li class="nav-item"><a class="nav-link" href="<%=request.getParameter("usuarios")%>">Usuarios</a>
	</li>
	<li class="nav-item"><a class="nav-link" href="<%=request.getParameter("livros")%>">Livros</a></li>
	<li class="nav-item"><a class="nav-link" href="<%=request.getParameter("compras")%>">Compras</a></li>
</ul>