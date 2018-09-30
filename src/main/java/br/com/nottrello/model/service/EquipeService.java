package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Equipe;

public interface EquipeService {
	public void adicionar(Equipe equipe);
	public void remover(Long id);
	public Equipe buscar(Long id);
	public List<Equipe> listarUsuarios();
}
