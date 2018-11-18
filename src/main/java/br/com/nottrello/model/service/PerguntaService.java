package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Pergunta;


public interface PerguntaService {
	
	public void salvar(Pergunta pergunta);
	public void remover(Long id);
	public Pergunta buscarPorId(Long id);
	public List<Pergunta> listarPorUsuario(Long id);
	public List<Pergunta> listarPerguntas();
}
