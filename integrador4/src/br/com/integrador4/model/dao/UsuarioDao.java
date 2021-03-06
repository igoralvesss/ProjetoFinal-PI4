package br.com.integrador4.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import br.com.integrador4.model.domain.Usuario;

public class UsuarioDao {
	
	public List<Usuario> getUsuarios() throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT *"
				+ "FROM usuarios");
		ResultSet rs = ps.executeQuery();
		List<Usuario> usuarios = new ArrayList<>();
		while(rs.next()) {
			usuarios.add(new Usuario(rs.getInt(1), rs.getString(2),
					rs.getString(3), rs.getString(4)));
		}
		return usuarios;
	}

	public void salvar(Usuario us)  throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"INSERT INTO usuarios(usuario,email,senha) VALUES (?,?,?)");
		statement.setString(1,us.getUsuario());
		statement.setString(2,us.getEmail());
		statement.setString(3,us.getSenha());
		statement.execute();
		
	}

	public void excluir(Integer codUsuario) throws SQLException, ClassNotFoundException{
		Connection conexao = ConexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"DELETE FROM usuarios WHERE id_user = ?");
		statement.setInt(1,codUsuario);
		statement.execute();
	}
	
	 public boolean validate(Usuario us) throws ClassNotFoundException {
	        boolean status = false;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/dbintegrador?useTimezone=true&serverTimezone=UTC", "root", "relevante");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection
	            .prepareStatement("select * from usuarios where usuario = ? and senha = ? ")) {
	            preparedStatement.setString(1, us.getUsuario());
	            preparedStatement.setString(2, us.getSenha() );

	            System.out.println(preparedStatement);
	            ResultSet rs = preparedStatement.executeQuery();
	            status = rs.next();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return status;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
}
