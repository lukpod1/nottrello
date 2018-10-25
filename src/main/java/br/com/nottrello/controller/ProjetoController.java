package br.com.nottrello.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.service.ProjetoService;
import br.com.nottrello.model.service.TarefaService;

@Controller
@RequestMapping("/projeto")
public class ProjetoController {

	@Autowired
	private ProjetoService projetoService;
	
	@Autowired
	private TarefaService tarefaService;

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
	
	@RequestMapping("/excluirProjeto")
	public String removeTarefa(@PathParam("id") Long id) {
		
		projetoService.remover(id);
		
		return "redirect:/usuario/logado";
	}
	
	@RequestMapping("/editarProjeto")
	public String editarTarefa(@PathParam("id") Long id, Model model) {
		model.addAttribute(projetoService.buscarPorId(id));
		
		
		return "pags/formProjeto";
	}
	
	@GetMapping("/projeto")
	public String listaProjeto(@PathParam("id") Long id, Model model) {
		model.addAttribute("projeto", projetoService.buscarPorId(id));
		model.addAttribute("projetos", projetoService.listarProjetos());
		model.addAttribute("tarefas", tarefaService.listarTarefas());
		return "/pags/listagem";
	}


}
