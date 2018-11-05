package br.com.nottrello.model.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Projeto implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "projeto_id")
	private Long id;
	private String nome;

	// @OneToMany(mappedBy = "projeto")
	// private List<Tarefa> tarefas = new ArrayList<>();
	private String descricao;
	private String dataVencimento;

	@ManyToOne
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;

	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status status;

	// @ManyToMany
	// private List<Categoria> categorias = new ArrayList<>();

	public Projeto() {
		super();
	}

	public Projeto(Long id, String nome, String descricao, String dataVencimento, Usuario usuario, Status status) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.dataVencimento = dataVencimento;
		this.usuario = usuario;
		this.status = status;

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

	// public List<Tarefa> getTarefas() {
	//
	// return tarefas;
	// }
	//
	// public void setTarefas(List<Tarefa> tarefas) {
	//
	// this.tarefas = tarefas;
	// }

	public String getDescricao() {

		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(String dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}
	
	

	// public String getEtiquetaCor() {
	// return etiquetaCor;
	// }
	//
	// public void setEtiquetaCor(String etiquetaCor) {
	// this.etiquetaCor = etiquetaCor;
	// }
	//
	// public Equipe getEquipe() {
	// return equipe;
	// }
	//
	// public void setEquipe(Equipe equipe) {
	// this.equipe = equipe;
	// }
	//
	// public List<Categoria> getCategorias() {
	//
	// return categorias;
	// }
	//
	// public void setCategorias(List<Categoria> categorias) {
	// this.categorias = categorias;
	// }

}
