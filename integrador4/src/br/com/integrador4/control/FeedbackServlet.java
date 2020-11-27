package br.com.integrador4.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.integrador4.model.dao.FeedbackDao;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/feedbackServlet")
public class FeedbackServlet extends HttpServlet {
	
	private FeedbackDao feedbackDao = new FeedbackDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		String id_feed = request.getParameter("id_feed");
		try {
			if(acao != null && acao.equals("excluir")) {
				Integer codFeedback = Integer.parseInt(id_feed);
				feedbackDao.excluir(codFeedback);
				request.setAttribute("mensagem", "Usuário excluído");
			}
			request.setAttribute("feedbacks", feedbackDao.getFeedbacks());
		} catch (SQLException e) {
			request.setAttribute("mensagem", "Erro de Banco de Dados: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage());
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/ListFeedback.jsp");
		dispatcher.forward(request, response);
	}

}
