package br.com.nottrello.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

@Entity
public class Usuario {

	private Long id;
	private String nome;
	private String email;
	private String senha;
	private List<Projeto> projetos = new ArrayList<>();
	private List<Tarefa> tarefas = new ArrayList<>();
	
}
