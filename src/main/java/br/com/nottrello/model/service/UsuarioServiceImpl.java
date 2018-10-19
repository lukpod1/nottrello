package br.com.nottrello.model.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public void salvar(Usuario usuario) {
		this.usuarioRepository.save(usuario);

	}

	@Override
	public void remover(Long id) {
		this.usuarioRepository.deleteById(id);

	}

	@Override
	public Usuario buscarId(Long id) {
		Optional<Usuario> u = this.usuarioRepository.findById(id);
		return u.get();

	}

	@Override
	public List<Usuario> buscarUsuarios() {
		List<Usuario> usuarios = new ArrayList<>();
		Iterator<Usuario> iterator = this.usuarioRepository.findAll().iterator();

		while (iterator.hasNext()) {
			usuarios.add(iterator.next());
		}

		return usuarios;
	}

	@Override
	public boolean verificarUsuario(Usuario usuario) {
		if (usuario.getNome().equalsIgnoreCase("admin") && usuario.getSenha().equalsIgnoreCase("admin")) {
			return true;
		} else {
			return false;
		}

	}

}
