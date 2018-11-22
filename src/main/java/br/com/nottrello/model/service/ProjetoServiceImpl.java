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

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.repository.ProjetoRepository;

@Service
public class ProjetoServiceImpl implements ProjetoService {

	@PersistenceContext
	private EntityManager manager;
	
	@Autowired
	private ProjetoRepository projetoRepository;	
	

	public ProjetoServiceImpl(ProjetoRepository projetoRepository) {
		super();
		this.projetoRepository = projetoRepository;
	}

	@Override
	public void salvar(Projeto projeto) {
		projetoRepository.save(projeto);

	}

	@Override
	public void remover(Long id) {
		projetoRepository.deleteById(id);

	}

	@Override
	public Projeto buscarPorId(Long id) {
		Optional<Projeto> p = this.projetoRepository.findById(id);
		return p.get();
	}

	@Override
	public List<Projeto> listarProjetos() {
		List<Projeto> projetos = new ArrayList<>();
		Iterator<Projeto> iterator = this.projetoRepository.findAll().iterator();

		while (iterator.hasNext()) {
			projetos.add(iterator.next());
		}

		return projetos;

	}

	@Override
	public List<Projeto> listarPorUsuario(Long id) {
		Query query = manager.createQuery("from Projeto where usuario_id = :id ");
		query.setParameter("id", id);
		List<Projeto> projetos = query.getResultList() ;

		return projetos;
		
	}

}
