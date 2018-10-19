package br.com.nottrello.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.service.ProjetoService;
import br.com.nottrello.model.service.TarefaService;
import br.com.nottrello.model.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private ProjetoService projetoService;

	@Autowired
	private TarefaService tarefaService;

	// Sempre lembrar de colocar o construtor para que os métodos do service
	// funcionem
	public UsuarioController(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;

	}

	@GetMapping("/novo")
	public String novo() {

		return "pags/testCadastro";
	}

	@PostMapping("/salvar")
	public String salvar(Usuario usuario) {

		usuarioService.salvar(usuario);

		return "redirect:/usuario/entrar";
	}

	@GetMapping("/entrar")
	public String entrar() {
		return "pags/testLogin";
	}

	@GetMapping("/logado")
	public String usuarioLogado(Model model) {
		model.addAttribute("projetos", projetoService.listarProjetos());
		model.addAttribute("tarefas", tarefaService.listarTarefas());
		return "/pags/usuariologado";
	}

	@GetMapping("/logar")
	public String logar(Usuario usuario, HttpSession session) {
		

		if (usuarioService.verificarUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "redirect:/usuario/logado";
		} else {
			return "pags/loginfail";
		}

	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return entrar();
	}
}
