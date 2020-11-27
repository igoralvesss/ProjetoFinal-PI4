package br.com.integrador4.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoJDBCFactory {
	
	public static Connection getConexao() throws SQLException,ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conexao = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/dbintegrador?useTimezone=true&serverTimezone=UTC", "root", "relevante");
		return conexao;
		
	}
	
	
	
}
