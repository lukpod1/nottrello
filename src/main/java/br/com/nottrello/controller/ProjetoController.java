package br.com.nottrello.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.service.ProjetoService;

@Controller
@RequestMapping("usuario/projeto")
public class ProjetoController {

	@Autowired
	private ProjetoService projetoService;

	public ProjetoController(ProjetoService projetoService) {
		super();
		this.projetoService = projetoService;
	}

	@GetMapping("/novo")
	public String novo() {

		return "/pags/formProjeto";
	}
	

	@PostMapping("/salvar")
	public String salvar(Projeto projeto) {

		projetoService.salvar(projeto);

		return "redirect:/usuario/logado";
	}


}
