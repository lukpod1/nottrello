package br.com.nottrello.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Status;
import br.com.nottrello.model.entity.Tarefa;
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
	public String listaProjeto(@PathParam("id") Long id, Model model) {			
		model.addAttribute("projeto", projetoService.buscarPorId(id));		
		model.addAttribute("tarefas", tarefaService.listarTarefasPorProjeto(id));
		model.addAttribute("status", statusService.listarStatus());
		
		List<Tarefa> tarefas = tarefaService.listarTarefasPorProjeto(id);
		
		int qtTarefaPendente = 0;
		int qtTarefaEmAndamento = 0;
		int qtTarefaConcluido = 0;
		
		for (Tarefa tarefa : tarefas) {
			if (tarefa.getStatus().getId() == 1) {
				qtTarefaPendente += 1;
				model.addAttribute("qtPendente", qtTarefaPendente);
			} else if (tarefa.getStatus().getId() == 2) {
				qtTarefaEmAndamento += 1;
				model.addAttribute("qtEmAndamento", qtTarefaEmAndamento);
			} else if (tarefa.getStatus().getId() == 3) {
				qtTarefaConcluido += 1;
				model.addAttribute("qtConcluido", qtTarefaConcluido);
			} 
		}
		
		return "/pags/listagem";
	}
	
	@GetMapping("/resumo/projeto")
	public String resumo(@PathParam("id") Long id, Model model) {			
		model.addAttribute("projeto", projetoService.buscarPorId(id));		
		model.addAttribute("tarefas", tarefaService.listarTarefasPorProjeto(id));
		
		List<Tarefa> tarefas = tarefaService.listarTarefasPorProjeto(id);
		
		int qtTarefaPendente = 0;
		int qtTarefaEmAndamento = 0;
		int qtTarefaConcluido = 0;
		
		for (Tarefa tarefa : tarefas) {
			if (tarefa.getStatus().getId() == 1) {
				qtTarefaPendente += 1;
				model.addAttribute("qtPendente", qtTarefaPendente);
			} else if (tarefa.getStatus().getId() == 2) {
				qtTarefaEmAndamento += 1;
				model.addAttribute("qtEmAndamento", qtTarefaEmAndamento);
			} else if (tarefa.getStatus().getId() == 3) {
				qtTarefaConcluido += 1;
				model.addAttribute("qtConcluido", qtTarefaConcluido);
			} 
		}
		
		return "/pags/resumo";
	}
	
	
	
	@GetMapping("/concluir")
	public String concluirProjeto(@PathParam("id") Long id) {
		Projeto projeto = projetoService.buscarPorId(id);
		Status status = statusService.buscarPorId(3l);
		tarefaService.verificaTarefasConcluidas(id);
		projeto.setStatus(status);
		projetoService.salvar(projeto);
		
		
		return "redirect:/projeto/projeto?id="+id;
		
	}


}
