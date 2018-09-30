package br.com.nottrello.model.service;

import br.com.nottrello.model.entity.Usuario;

public interface UsuarioService {

	public void salvar(Usuario usuario);
	public void remover(Long id);
	public Usuario buscar(Long id);
}
