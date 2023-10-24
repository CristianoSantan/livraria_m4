package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LivroDAO;
import modelos.Livros;

@WebServlet(urlPatterns = { "/livro", "/livro-create", "/livro-edit", "/livro-update", "/livro-delete" })
public class LivroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LivroDAO ldao = new LivroDAO();
	Livros livro = new Livros();
	
    public LivroServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/livro":
			read(request, response);
			break;
		case "/livro-create":
			create(request, response);
			break;
		case "/livro-edit":
			edit(request, response);
			break;
		case "/livro-update":
			update(request, response);
			break;
		case "/livro-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Livros> lista = ldao.read();

		request.setAttribute("listaLivros", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/livros/index.jsp");
		rd.forward(request, response);

	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		livro.setNome(request.getParameter("nome"));
		livro.setAutor(request.getParameter("autor"));
		livro.setEditora(request.getParameter("editora"));
		livro.setPreco(Double.parseDouble(request.getParameter("preco")));

		ldao.create(livro);
		response.sendRedirect("livro");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		livro = ldao.readById(id);
		
		request.setAttribute("livro", livro);

		RequestDispatcher rd = request.getRequestDispatcher("./views/livros/update.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		livro.setId(Integer.parseInt(request.getParameter("id")));
		livro.setNome(request.getParameter("nome"));
		livro.setAutor(request.getParameter("autor"));
		livro.setEditora(request.getParameter("editora"));
		livro.setPreco(Double.parseDouble(request.getParameter("preco")));

		ldao.update(livro);
		response.sendRedirect("livro");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ldao.delete(id);
		response.sendRedirect("livro");
	}

}
