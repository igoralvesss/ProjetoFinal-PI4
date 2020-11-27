package br.com.integrador4.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.integrador4.model.domain.Feedback;

public class FeedbackDao {
	public List<Feedback> getFeedbacks() throws SQLException, ClassNotFoundException {
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT *"
				+ "FROM feedback");
		ResultSet rs = ps.executeQuery();
		List<Feedback> feedbacks = new ArrayList<>();
		while (rs.next()) {
			feedbacks.add(new Feedback(rs.getInt(1), rs.getString(2), rs.getString(3)));
		}
		return feedbacks;
	}

	public void salvar(Feedback fb) throws SQLException, ClassNotFoundException {
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao
				.prepareStatement("INSERT INTO feedback(descricao,data_pub) VALUES (?,TIMESTAMP)");
		statement.setString(1, fb.getDescricao());
		statement.setString(2, fb.getData_pub());
		statement.execute();

	}

	public void excluir(Integer codFeedback) throws SQLException, ClassNotFoundException {
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement("DELETE FROM feedback WHERE id_feed = ?");
		statement.setInt(1, codFeedback);
		statement.execute();
	}
}
