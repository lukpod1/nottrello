package br.com.nottrello.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Pergunta;
import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.repository.PerguntaRepository;

@Service
public class PerguntaServiceImpl implements PerguntaService {
	
	@PersistenceContext
	private EntityManager manager;
	
	@Autowired
	private PerguntaRepository perguntaRepository;

	@Override
	public void salvar(Pergunta pergunta) {
		perguntaRepository.save(pergunta);

	}

	@Override
	public void remover(Long id) {
		perguntaRepository.deleteById(id);

	}

	@Override
	public Pergunta buscarPorId(Long id) {
		Optional<Pergunta> p = this.perguntaRepository.findById(id);
		return p.get();
	}

	@Override
	public List<Pergunta> listarPorUsuario(Long id) {
		return null;
	}

	@Override
	public List<Pergunta> listarPerguntas() {
		List<Pergunta> perguntas = new ArrayList<>();
		Iterator<Pergunta> iterator = this.perguntaRepository.findAll().iterator();

		while (iterator.hasNext()) {
			perguntas.add(iterator.next());
		}

		return perguntas;
		
	}

}
