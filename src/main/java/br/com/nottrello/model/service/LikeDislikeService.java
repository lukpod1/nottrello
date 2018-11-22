package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.LikeDislike;
import br.com.nottrello.model.entity.Resposta;
import br.com.nottrello.model.entity.Usuario;

public interface LikeDislikeService {
	public void salvar(LikeDislike likeDislike);
	public void remover(Long id);
	public List<LikeDislike> listarPorCurtir();
	public List<LikeDislike> listarPorDiscurtir();
	public List<LikeDislike> listarPorResposta(Resposta resposta);
	public void curtir(Resposta resposta, Usuario usuario);
	public void discurtir(Resposta resposta, Usuario usuario);
}
