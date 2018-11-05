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
public class NottrelloApplication extends SpringBootServletInitializer {
	

	
	public static void main(String[] args) {
		SpringApplication.run(NottrelloApplication.class, args);
	}
	
	
	
	
	
}
