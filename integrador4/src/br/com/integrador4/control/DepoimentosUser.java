package br.com.integrador4.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.integrador4.model.dao.DepoimentoDao;
import br.com.integrador4.model.domain.Depoimento;
import br.com.integrador4.model.domain.Usuario;
import util.ValidacaoException;

/**
 * Servlet implementation class DepoimentosUser
 */
@WebServlet("/depoimentosUser")
public class DepoimentosUser extends HttpServlet {
	
	private DepoimentoDao depoimentoDao = new DepoimentoDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepoimentosUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		String id_dep = request.getParameter("id_dep");
		try {
			if(acao != null && acao.equals("excluir")) {
				Integer codDepoimento = Integer.parseInt(id_dep);
				depoimentoDao.excluir(codDepoimento);
				request.setAttribute("mensagem", "Depoimento excluído");
			}
			request.setAttribute("depoimentos", depoimentoDao.getDepoimentos());
		} catch (SQLException e) {
			request.setAttribute("mensagem", "Erro de Banco de Dados: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage());
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/Depoimentos.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String descricao = request.getParameter("descricao");

		
		Depoimento dp = new Depoimento(null, descricao, null);

		try {
			dp.valida();
			depoimentoDao.salvar(dp);

			request.setAttribute("mensagem2", "Depoimento salvo com sucesso");
			request.setAttribute("depoimentos", depoimentoDao.getDepoimentos());
		} catch (ValidacaoException e) {
			request.setAttribute("mensagem2", "Erro de Validacao dos Campos: " + e.getMessage());
			request.setAttribute("depoimento", dp);
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("depoimento", dp);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("depoimento", dp);
		}
		try {
			request.setAttribute("depoimento", depoimentoDao.getDepoimentos());
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("depoimento", dp);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("depoimento", dp);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/Depoimentos.jsp");
		dispatcher.forward(request, response);
	}

}
