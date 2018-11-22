package br.com.nottrello.model.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.LikeDislike;
import br.com.nottrello.model.entity.Resposta;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.LikeDislikeRepository;

@Service
public class LikeDislikeServiceImpl implements LikeDislikeService {
	
	@PersistenceContext
	private EntityManager manager;
	
	@Autowired
	private LikeDislikeRepository likeDislikeRepository;
	
	
	@Override
	public void salvar(LikeDislike likeDislike) {
		likeDislikeRepository.save(likeDislike);

	}

	@Override
	public void remover(Long id) {
		likeDislikeRepository.deleteById(id);

	}	

	@Override
	public List<LikeDislike> listarPorCurtir() {
		Query query = manager.createQuery("from LikeDislike where positivo = :positivo ");		
		query.setParameter("positivo", true);
		List<LikeDislike> likes = query.getResultList() ;

		return likes;
		
	}

	@Override
	public List<LikeDislike> listarPorDiscurtir() {
		Query query = manager.createQuery("from LikeDislike where positivo = :positivo ");
		query.setParameter("positivo", false);
		List<LikeDislike> dislikes = query.getResultList() ;

		return dislikes;
	}
	
	@Override
	public List<LikeDislike> listarPorResposta(Resposta resposta) {
		Query query = manager.createQuery("from LikeDislike where positivo = :positivo and resposta_id= :resposta ");
		query.setParameter("positivo", false);
		query.setParameter("resposta", resposta.getId());
		List<LikeDislike> dislikes = query.getResultList();

		return dislikes;
		
	}

	@Override
	public void curtir(Resposta resposta, Usuario usuario) {
		
		LikeDislike likeDislike =  new LikeDislike();
		likeDislike.setResposta(resposta);
		likeDislike.setUsuario(usuario);
		likeDislike.setPositivo(true);	
		salvar(likeDislike);	
		
	}

	@Override
	public void discurtir(Resposta resposta, Usuario usuario) {
		LikeDislike likeDislike =  new LikeDislike();
		likeDislike.setResposta(resposta);
		likeDislike.setUsuario(usuario);
		likeDislike.setPositivo(false);	
		salvar(likeDislike);		
		
	}

	

}
