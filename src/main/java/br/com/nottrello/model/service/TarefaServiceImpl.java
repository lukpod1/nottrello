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

import br.com.nottrello.model.entity.Status;
import br.com.nottrello.model.entity.Tarefa;
import br.com.nottrello.model.repository.TarefaRepository;

@Service
public class TarefaServiceImpl implements TarefaService {

	@PersistenceContext
	private EntityManager manager;

	@Autowired
	private TarefaRepository tarefaRepository;
	
	@Autowired
	private StatusService statusService;
	

	public TarefaServiceImpl(TarefaRepository tarefaRepository) {
		super();
		this.tarefaRepository = tarefaRepository;
	}

	@Override
	public void salvar(Tarefa tarefa) {
		tarefaRepository.save(tarefa);

	}

	@Override
	public void remover(Long id) {
		tarefaRepository.deleteById(id);

	}

	@Override
	public Tarefa buscar(Long id) {
		Optional<Tarefa> t = this.tarefaRepository.findById(id);
		return t.get();

	}

	@Override
	public Tarefa atualizar(Tarefa tarefa) {
		buscar(tarefa.getId());
		return this.tarefaRepository.save(tarefa);
	}

	@Override
	public List<Tarefa> listarTarefasPorProjeto(Long id) {
		Query query = manager.createQuery("from Tarefa where projeto_id = :id ");
		query.setParameter("id", id);
		List<Tarefa> tarefas = query.getResultList();

		return tarefas;
	}

	@Override
	public void verificaTarefasConcluidas(Long id) {
		List<Tarefa> tarefas = listarTarefasPorProjeto(id);
		Status status = statusService.buscarPorId(3l);
		for (Tarefa tarefa : tarefas) {
			if (tarefa.getStatus().getId() != 3) {
				tarefa.setStatus(status);
				salvar(tarefa);
			}		

		}
	}

}
