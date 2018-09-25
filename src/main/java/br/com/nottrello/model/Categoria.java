package br.com.nottrello.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

@Entity
public class Categoria {

	private Long id;
	private String nome;
	private List<Projeto> projetos = new ArrayList<>();
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
	public List<Projeto> getProjetos() {
		return projetos;
	}
	public void setProjetos(List<Projeto> projetos) {
		this.projetos = projetos;
	}
	
	
}
