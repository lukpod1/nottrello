package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Tarefa;


public interface TarefaService {
	public void salvar(Tarefa tarefa);
	public void remover(Long id);
	public Tarefa buscar(Long id);
	public Tarefa atualizar(Tarefa tarefa);
	public List<Tarefa> listarTarefasPorProjeto(Long id);
	public void verificaTarefasConcluidas(Long id);
}
