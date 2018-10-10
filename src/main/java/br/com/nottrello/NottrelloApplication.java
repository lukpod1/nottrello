package br.com.nottrello;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import br.com.nottrello.model.entity.Equipe;
import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Tarefa;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.ProjetoRepository;
import br.com.nottrello.model.repository.TarefaRepository;
import br.com.nottrello.model.repository.UsuarioRepository;

@SpringBootApplication
@EntityScan(basePackages = {"br.com.nottrello.model"})
@ComponentScan(basePackages = {"br.com*"})
@EnableJpaRepositories(basePackages = {"br.com.nottrello.model.repository*"})
public class NottrelloApplication implements CommandLineRunner {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
//	
//	@Autowired
//	private ProjetoRepository projetoRepository;
//	
//	@Autowired
//	private TarefaRepository tarefaRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(NottrelloApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		Usuario user1 = new Usuario(null, "admin", "admin@admin.com", "admin123");
		usuarioRepository.save(user1);
//		Usuario user2 = new Usuario(null, "Lucas", "lucas@admin.com", "lucas123");
//		Usuario user3 = new Usuario(null, "Jaicke", "jaicke@admin.com", "jaicke123");
//		
//		Equipe equipe1 = new Equipe(null);
//		equipe1.getUsuarios().addAll(Arrays.asList(user1,user2,user3));	
//		
//		Projeto pj1 = new Projeto(null, "Website","Site de gerenciamento de projetos","20/11/2018");
//		pj1.setEquipe(equipe1);
//		
//		Tarefa tr1 = new Tarefa(null, "Criar Front-end", "Usar HTML, CCSe javascript");
//		Tarefa tr2 = new Tarefa(null, "Criar Back-end", "Usar Java");
//		Tarefa tr3 = new Tarefa(null, "Criar Banco do dados", "Usar Postgrees");
		
	}
	
	
	
}
