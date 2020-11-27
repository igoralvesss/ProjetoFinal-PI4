package br.com.integrador4.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.integrador4.model.dao.UsuarioDao;
import br.com.integrador4.model.domain.Usuario;
import util.ValidacaoException;

/**
 * Servlet implementation class UsuarioServlet
 */
@WebServlet("/usuarioServlet")
public class UsuarioServlet extends HttpServlet {

	private UsuarioDao usuarioDao = new UsuarioDao();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");
		String id_user = request.getParameter("id_user");
		try {
			if(acao != null && acao.equals("excluir")) {
				Integer codUsuario = Integer.parseInt(id_user);
				usuarioDao.excluir(codUsuario);
				request.setAttribute("mensagem", "Usuário excluído");
			}
			request.setAttribute("usuarios", usuarioDao.getUsuarios());
		} catch (SQLException e) {
			request.setAttribute("mensagem", "Erro de Banco de Dados: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage());
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/ListUser.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String usuario = request.getParameter("usuario");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		Usuario us = new Usuario(null, usuario, email, senha);

		try {
			us.valida();
			usuarioDao.salvar(us);

			request.setAttribute("mensagem2", "Usuário salvo com sucesso");
			request.setAttribute("usuarios", usuarioDao.getUsuarios());
		} catch (ValidacaoException e) {
			request.setAttribute("mensagem2", "Erro de Validacao dos Campos: " + e.getMessage());
			request.setAttribute("usuario", us);
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("usuario", us);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("usuario", us);
		}
		try {
			request.setAttribute("usuario", usuarioDao.getUsuarios());
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("usuario", us);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("usuario", us);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/ListUser.jsp");
		dispatcher.forward(request, response);

	}

}
