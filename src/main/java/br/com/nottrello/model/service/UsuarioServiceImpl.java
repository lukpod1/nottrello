package br.com.nottrello.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jayway.jsonpath.Predicate;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@PersistenceContext
	private EntityManager manager;

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
//		if (usuario.getNome().equalsIgnoreCase("admin") && usuario.getSenha().equalsIgnoreCase("admin")) {
//			return true;
//		} else {
//			return false;
//		}
		
		
//		CriteriaBuilder builder = manager.getCriteriaBuilder();
//		CriteriaQuery<Usuario> query = builder.createQuery(Usuario.class);
//		Root<Usuario> from = query.from(Usuario.class);
//		Predicate predicate = (Predicate) builder.and();
//		predicate = (Predicate) builder.and((Expression<Boolean>) predicate, builder.equal(from.get("nome"), usuario.getNome()));
//		predicate = (Predicate) builder.and((Expression<Boolean>) predicate, builder.equal(from.get("senha"), usuario.getSenha()));
//		
//		TypedQuery<Usuario> typedQuery = manager.createQuery(
//				query.select(from).where().orderBy(builder.asc(from.get("id"))));
//		return !typedQuery.getResultList().isEmpty();
		
		Query query = manager.createQuery("from Usuario where nome = :nome and senha = :senha");
		query.setParameter("nome", usuario.getNome());
		query.setParameter("senha", usuario.getSenha());
		return !query.getResultList().isEmpty();
		
		

	}

}
