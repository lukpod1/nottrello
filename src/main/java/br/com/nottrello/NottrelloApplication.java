package br.com.nottrello;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Status;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.ProjetoRepository;
import br.com.nottrello.model.repository.StatusRepository;
import br.com.nottrello.model.repository.UsuarioRepository;

@SpringBootApplication
@EntityScan(basePackages = {"br.com.nottrello.model"})
@ComponentScan(basePackages = {"br.com*"})
@EnableJpaRepositories(basePackages = {"br.com.nottrello.model.repository*"})
public class NottrelloApplication extends SpringBootServletInitializer implements CommandLineRunner {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Autowired
	private StatusRepository statusRepository;
	
	@Autowired
	private ProjetoRepository projetoRepository;
	
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
//		Usuario user1 = new Usuario(null, "matheus alves", "mgamer", "admin@admin.com", "matheus123");
//		Usuario user2 = new Usuario(null, "jose lucas alves da silva", "lukpod1","lucas@admin.com", "lucas123");
//		Usuario user3 = new Usuario(null, "jaicke santos da silva", "garpp", "jaicke@admin.com", "jaicke123");
		
		
//		Projeto projeto1 = new Projeto(null, "NotTrello C#", "Melhor gerenciador de Projetos", "22/11/2018", user1.getId());
//		Projeto projeto2 = new Projeto(null, "NotTrello Java", "Melhor gerenciador de Projetos", "22/11/2018", user2.getId());
//		Projeto projeto3 = new Projeto(null, "NotTrello Python", "Melhor gerenciador de Projetos", "22/11/2018", user3.getId());
//		
//		
//		projetoRepository.saveAll(Arrays.asList(projeto1, projeto2, projeto3));
//		usuarioRepository.saveAll(Arrays.asList(user1, user2, user3));
		
		Status status1 = new Status(null, "Pendente");
		Status status2 = new Status(null, "Em andamento");
		Status status3 = new Status(null, "Concluido");
		statusRepository.saveAll(Arrays.asList(status1, status2, status3)); 
		
		
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
