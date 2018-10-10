package br.com.nottrello.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Tarefa implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private Categoria categoria;
	private String prioridadeCor;
	private String dataVencimento;
	private String status;
	private String descricao;
	
	@ManyToOne
	private Usuario usuario;
	
	@OneToOne
	private Projeto projeto;
	

	public Tarefa() {
		
	}

	public Tarefa(Long id, String nome, Categoria categoria, String prioridadeCor, String dataVencimento, String status,
			String descricao, Usuario usuario, Projeto projeto) {
		super();
		this.id = id;
		this.nome = nome;
		this.categoria = categoria;
		this.prioridadeCor = prioridadeCor;
		this.dataVencimento = dataVencimento;
		this.status = status;
		this.descricao = descricao;
		this.usuario = usuario;
		this.projeto = projeto;
	}

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

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Projeto getProjeto() {
		return projeto;
	}

	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	
	
	
	

}
