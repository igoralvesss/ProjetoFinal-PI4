package br.com.integrador4.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.integrador4.model.domain.Depoimento;

public class DepoimentoDao {
	public List<Depoimento> getDepoimentos() throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT *"
				+ "FROM depoimento");
		ResultSet rs = ps.executeQuery();
		List<Depoimento> depoimentos = new ArrayList<>();
		while(rs.next()) {
			depoimentos.add(new Depoimento(rs.getInt(1), rs.getString(2),
					rs.getString(3)));
		}
		return depoimentos;
	}

	public void salvar(Depoimento dp)  throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"INSERT INTO depoimento(descricao,publicacao) VALUES (?,CURRENT_TIMESTAMP)");
		statement.setString(1,dp.getDescricao());

		statement.execute();
		
	}

	public void excluir(Integer codDepoimento) throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"DELETE FROM depoimento WHERE id_dep = ?");
		statement.setInt(1,codDepoimento);
		statement.execute();
	}
}
