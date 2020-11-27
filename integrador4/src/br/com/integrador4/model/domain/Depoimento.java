package br.com.integrador4.model.domain;

import util.ValidacaoException;

public class Depoimento {
	private Integer id_dep;
	private String descricao;
	private String publicacao;
	
	public void valida() throws ValidacaoException {
		if (descricao == null || descricao.equals("")) {
			throw new ValidacaoException("O campo usuario é obrigatório");
		}
	}
	
	public Depoimento() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Depoimento(Integer id_dep, String descricao, String publicacao) {
		super();
		this.id_dep = id_dep;
		this.descricao = descricao;
		this.publicacao = publicacao;
	}

	public Integer getId_dep() {
		return id_dep;
	}

	public void setId_dep(Integer id_dep) {
		this.id_dep = id_dep;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getPublicacao() {
		return publicacao;
	}

	public void setPublicacao(String publicacao) {
		this.publicacao = publicacao;
	}
	
	
}
