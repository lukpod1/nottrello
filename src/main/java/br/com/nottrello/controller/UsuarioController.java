package br.com.nottrello.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.repository.UsuarioRepository;
import br.com.nottrello.model.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	private UsuarioService usuarioService;	
	
	//Sempre lembrar de colocar o construtor para que os métodos do service funcionem
	public UsuarioController(UsuarioService usuarioService) {		
		this.usuarioService = usuarioService;
		
	}

	@GetMapping("/novo")
	public String novo() {		

		return "pags/formCadastro";
	}	

	

	@PostMapping("/salvar")
	public String salvar(Usuario usuario) {

		usuarioService.salvar(usuario);
		
		

		return "redirect:/usuario/entrar";
	}

	@GetMapping("/entrar")
	public String entrar() {
		return "pags/formLogin";
	}
	
	@GetMapping("/logado")
	public String usuarioLogado() {
		return "pags/usuariologado";
	}

	@PostMapping("/logar")
	public String logar(Usuario usuario) {
		
			if (usuario.getEmail().equalsIgnoreCase("admin@admin.com") && usuario.getSenha().equalsIgnoreCase("admin")) {
				return "redirect:/usuario/logado";
			} else {
				return "pags/loginfail";
		}
		

		

		
	}
}
