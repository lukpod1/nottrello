package br.com.nottrello.controller;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.service.ProjetoService;
import br.com.nottrello.model.service.StatusService;
import br.com.nottrello.model.service.TarefaService;

@Controller
@RequestMapping("/projeto")
public class ProjetoController {

	@Autowired
	private ProjetoService projetoService;
	
	@Autowired
	private TarefaService tarefaService;
	
	@Autowired
	private StatusService statusService;

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
	public String removeProjeto(@PathParam("id") Long id) {
		
		projetoService.remover(id);
		
		return "redirect:/usuario/logado";
	}	

	
	@GetMapping("/projeto")
	public String listaProjeto(@PathParam("id") Long id, Model model, HttpSession session) {
		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		model.addAttribute("projetos", projetoService.listarPorUsuario(usuario.getId()));
		model.addAttribute("projeto", projetoService.buscarPorId(id));		
		model.addAttribute("tarefas", tarefaService.listarTarefasPorProjeto(id));
		model.addAttribute("status", statusService.listarStatus());
		return "/pags/listagem";
	}


}
