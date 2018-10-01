package br.com.nottrello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages = {"br.com.nottrello.model"})
@ComponentScan(basePackages = {"br.com*"})
@EnableJpaRepositories(basePackages = {"br.com.nottrello.model.repository*"})
public class NottrelloApplication {

	public static void main(String[] args) {
		SpringApplication.run(NottrelloApplication.class, args);
	}
}
