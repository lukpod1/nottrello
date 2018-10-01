package br.com.nottrello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.UsuarioRepository;

@SpringBootApplication
@EntityScan(basePackages = {"br.com.nottrello.model"})
@ComponentScan(basePackages = {"br.com*"})
@EnableJpaRepositories(basePackages = {"br.com.nottrello.model.repository*"})
public class NottrelloApplication implements CommandLineRunner {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	
	public static void main(String[] args) {
		SpringApplication.run(NottrelloApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		Usuario user = new Usuario(null, "admin", "admin@admin.com", "admin123");
		usuarioRepository.save(user);
		
	}
	
	
	
}
