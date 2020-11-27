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
import br.com.integrador4.model.dao.UsuarioDao;

/**
 * Servlet implementation class DepoimentoServlet
 */
@WebServlet("/depoimentoServlet")
public class DepoimentoServlet extends HttpServlet {
	
	private DepoimentoDao depoimentoDao = new DepoimentoDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepoimentoServlet() {
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

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/ListDepoimento.jsp");
		dispatcher.forward(request, response);
	}

}
