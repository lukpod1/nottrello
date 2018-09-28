package br.com.nottrello.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.Tarefa;
import br.com.nottrello.model.repository.TarefaRepository;

@Service
public class TarefaServiceImpl implements TarefaService {

	@Autowired
	private TarefaRepository tarefaRepository;

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
	public List<Tarefa> listarTarefas() {
		List<Tarefa> tarefas = new ArrayList<>();
		Iterator<Tarefa> iterator = this.tarefaRepository.findAll().iterator();

		while (iterator.hasNext()) {
			tarefas.add(iterator.next());
		}

		return tarefas;
	}

}
