package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Status;

public interface StatusService {

	public void salvar(Status status);
	public List<Status> listarStatus();
	public Status buscarPorId(Long id);
}
