package br.com.integrador4.model.domain;

import util.ValidacaoException;

public class Usuario {
	private Integer id_user;
	private String usuario;
	private String email;
	private String senha;
	
	
	public Usuario() {
		super();
	}
	
	public void valida() throws ValidacaoException {
		if (usuario == null || usuario.equals("")) {
			throw new ValidacaoException("O campo usuario é obrigatório");
		}
		if (email == null || email.equals("")) {
			throw new ValidacaoException("O campo email é obrigatório");
		}
		if (senha == null || senha.equals("")) {
			throw new ValidacaoException("O campo senha é obrigatório");
		}
	}
	
	public Usuario(Integer id_user, String usuario, String email, String senha) {
		super();
		this.id_user = id_user;
		this.usuario = usuario;
		this.email = email;
		this.senha = senha;
	}
	
	public Integer getId_user() {
		return id_user;
	}
	public void setId_user(Integer id_user) {
		this.id_user = id_user;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	

}
