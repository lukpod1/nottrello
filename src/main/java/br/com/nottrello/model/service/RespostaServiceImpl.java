package br.com.nottrello.model.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Pergunta;
import br.com.nottrello.model.entity.Resposta;
import br.com.nottrello.model.repository.RespostaRepository;

@Service
public class RespostaServiceImpl implements RespostaService {

	@PersistenceContext
	private EntityManager manager;
	
	@Autowired
	private RespostaRepository respostaRepository;
	
	@Override
	public void salvar(Resposta resposta) {
		respostaRepository.save(resposta);

	}

	@Override
	public void remover(Long id) {
		respostaRepository.deleteById(id);

	}

	@Override
	public Resposta buscarPorId(Long id) {
		Optional<Resposta> r = this.respostaRepository.findById(id);
		return r.get();
	}

	@Override
	public List<Resposta> listarPorPergunta(Long id) {
		Query query = manager.createQuery("from Resposta where pergunta_id = :id ");
		query.setParameter("id", id);
		List<Resposta> respostas = query.getResultList() ;

		return respostas;
	}

	@Override
	public List<Resposta> listarPerguntas() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void like(Resposta resposta) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deslike(Resposta resposta) {
		// TODO Auto-generated method stub

	}

}
