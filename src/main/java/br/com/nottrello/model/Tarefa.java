package br.com.nottrello.model;

import javax.persistence.Entity;

@Entity
public class Tarefa {

	private Long id;
	private String nome;
	private Categoria categoria;
	private String prioridadeCor;
	private String dataVencimento;
	private String status;
	private String descricao;
	private Usuario usuario;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public String getPrioridadeCor() {
		return prioridadeCor;
	}

	public void setPrioridadeCor(String prioridadeCor) {
		this.prioridadeCor = prioridadeCor;
	}

	public String getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(String dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
