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
import br.com.integrador4.model.domain.Feedback;
import util.ValidacaoException;

/**
 * Servlet implementation class FeedbackUser
 */
@WebServlet("/feedbackUser")
public class FeedbackUser extends HttpServlet {
	
	private FeedbackDao feedbackDao = new FeedbackDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/contatos.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String descricao = request.getParameter("descricao");
		
		Feedback fb = new Feedback(null, descricao, null);

		try {
			fb.valida();
			feedbackDao.salvar(fb);

			request.setAttribute("mensagem2", "FeedBack salvo com sucesso");
			request.setAttribute("feedbacks", feedbackDao.getFeedbacks());
		} catch (ValidacaoException e) {
			request.setAttribute("mensagem2", "Erro de Validacao dos Campos: " + e.getMessage());
			request.setAttribute("feedback", fb);
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("feedback", fb);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("feedback", fb);
		}
		try {
			request.setAttribute("feedback", feedbackDao.getFeedbacks());
		} catch (SQLException e) {
			request.setAttribute("mensagem2", "Erro de Banco de Dados: " + e.getMessage());
			request.setAttribute("feedback", fb);
		} catch (ClassNotFoundException e) {
			request.setAttribute("mensagem2", "Erro de Driver: " + e.getMessage());
			request.setAttribute("feedback", fb);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/contatos.jsp");
		dispatcher.forward(request, response);
	}

}
