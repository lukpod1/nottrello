package br.com.nottrello.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Equipe;
import br.com.nottrello.model.repository.EquipeRepository;

@Service
public class EquipeServiceImpl implements EquipeService {

	@Autowired
	private EquipeRepository equipeRepository;

	@Override
	public void adicionar(Equipe equipe) {
		equipeRepository.save(equipe);

	}

	@Override
	public void remover(Long id) {
		equipeRepository.deleteById(id);

	}

	@Override
	public Equipe buscar(Long id) {
		Optional<Equipe> e = this.equipeRepository.findById(id);
		return e.get();

	}

	@Override
	public List<Equipe> listarUsuarios() {
		List<Equipe> equipes = new ArrayList<>();
		Iterator<Equipe> iterator = this.equipeRepository.findAll().iterator();

		while (iterator.hasNext()) {
			equipes.add(iterator.next());
		}

		return equipes;
	}

}
