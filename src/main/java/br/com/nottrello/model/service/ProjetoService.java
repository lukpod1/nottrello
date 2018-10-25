package br.com.nottrello.model.service;



import java.util.List;

import br.com.nottrello.model.entity.Projeto;


public interface ProjetoService {
	public void salvar(Projeto projeto);
	public void remover(Long id);
	public Projeto buscarPorId(Long id);
	public List<Projeto> listarProjetos();
}
