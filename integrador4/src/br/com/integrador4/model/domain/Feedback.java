package br.com.integrador4.model.domain;

import util.ValidacaoException;

public class Feedback {
	private Integer id_feed;
	private String descricao;
	private String data_pub;
	
	public Feedback() {
		super();
	}
	
	public void valida() throws ValidacaoException {
		if (descricao == null || descricao.equals("")) {
			throw new ValidacaoException("É preciso digitar algum feedback.");
		}
	}
	public Feedback(Integer id_feed, String descricao, String data_pub) {
		super();
		this.id_feed = id_feed;
		this.descricao = descricao;
		this.data_pub = data_pub;
	}
	
	public Integer getId_feed() {
		return id_feed;
	}
	
	public void setId_feed(Integer id_feed) {
		this.id_feed = id_feed;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getData_pub() {
		return data_pub;
	}
	public void setData_pub(String data_pub) {
		this.data_pub = data_pub;
	}
	

}
