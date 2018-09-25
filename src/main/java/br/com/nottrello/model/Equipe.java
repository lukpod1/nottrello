package br.com.nottrello.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

@Entity
public class Equipe{

	private Long id;
	private List<Usuario> usuarios = new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

}
