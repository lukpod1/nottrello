package br.com.nottrello.model.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.Usuario;
import br.com.nottrello.model.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public void salvar(Usuario usuario) {
		usuarioRepository.save(usuario);

	}

	@Override
	public void remover(Long id) {
		usuarioRepository.deleteById(id);

	}

	@Override
	public Usuario buscar(Long id) {
		Optional<Usuario> u = this.usuarioRepository.findById(id);
		return u.get();

	}

}
