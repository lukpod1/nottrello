package br.com.nottrello.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

@Entity
public class Projeto {

	private Long id;
	private String nome;
	private List<Tarefa> tarefas = new ArrayList<>();
	private String descricao;
	private String dataVecimento;
	private String etiquetaCor;
	private Equipe equipe;
	private List<Usuario> obs = new ArrayList<>();

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

	public List<Tarefa> getTarefas() {
		return tarefas;
	}

	public void setTarefas(List<Tarefa> tarefas) {
		this.tarefas = tarefas;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDataVecimento() {
		return dataVecimento;
	}

	public void setDataVecimento(String dataVecimento) {
		this.dataVecimento = dataVecimento;
	}

	public String getEtiquetaCor() {
		return etiquetaCor;
	}

	public void setEtiquetaCor(String etiquetaCor) {
		this.etiquetaCor = etiquetaCor;
	}

	public Equipe getEquipe() {
		return equipe;
	}

	public void setEquipe(Equipe equipe) {
		this.equipe = equipe;
	}

	public List<Usuario> getObs() {
		return obs;
	}

	public void setObs(List<Usuario> obs) {
		this.obs = obs;
	}

}
