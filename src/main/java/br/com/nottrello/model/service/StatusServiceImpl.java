package br.com.nottrello.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.nottrello.model.entity.Status;
import br.com.nottrello.model.repository.StatusRepository;

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

}
