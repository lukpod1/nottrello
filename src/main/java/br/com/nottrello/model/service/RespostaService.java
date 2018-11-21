package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Resposta;

public interface RespostaService {

	public void salvar(Resposta resposta);
	public void remover(Long id);
	public Resposta buscarPorId(Long id);
	public List<Resposta> listarPorPergunta(Long id);
	public void like(Resposta resposta);
	public void deslike(Resposta resposta);
}
