package br.com.nottrello.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController{

	@RequestMapping("/home")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/formLogin")
	public String login() {
		return "pags/formLogin";
	}
	
	@RequestMapping("/formCadastro")
	public String inscrever() {
		return "pags/formCadastro";
	}
}
