package br.com.nottrello.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Status;
import br.com.nottrello.model.repository.StatusRepository;

@Service
public class StatusServiceImpl implements StatusService{

	@Autowired
	private StatusRepository statusRepository;
	
	public StatusServiceImpl(StatusRepository statusRepository) {
		super();
		this.statusRepository = statusRepository;
	}

	@Override
	public void salvar(Status status) {
		this.statusRepository.save(status);
		
	}

	@Override
	public List<Status> listarStatus() {
		List<Status> status = new ArrayList<>();
		Iterator<Status> iterator = this.statusRepository.findAll().iterator();

		while (iterator.hasNext()) {
			status.add(iterator.next());
		}

		return status;
	}

	@Override
	public Status buscarPorId(Long id) {
		Optional<Status> s = this.statusRepository.findById(id);
		return s.get();
		
	}

}
