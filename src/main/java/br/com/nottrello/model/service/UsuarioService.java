package br.com.nottrello.model.service;

import java.util.List;

import br.com.nottrello.model.entity.Usuario;

public interface UsuarioService {

	public void salvar(Usuario usuario);
	public void remover(Long id);
	public Usuario buscarId(Long id);
	public List<Usuario> buscarUsuarios();
	public boolean verificarUsuario(Usuario usuario);
}
