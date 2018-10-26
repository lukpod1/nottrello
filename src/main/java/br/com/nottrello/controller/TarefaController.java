package br.com.nottrello.controller;


import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Tarefa;
import br.com.nottrello.model.service.TarefaService;

@Controller
public class TarefaController{

	@Autowired
	private TarefaService tarefaService;
	
	
	
	public TarefaController(TarefaService tarefaService) {
		super();
		this.tarefaService = tarefaService;
	}

	@RequestMapping("/salvarTarefa")
	public String salvarTarefa(Tarefa tarefa) {
		tarefaService.salvar(tarefa);
		
		return "redirect:/usuario/logado";
	}
	
	@RequestMapping("/excluirTarefa")
	public String removeTarefa(@PathParam("id") Long id) {
		
		tarefaService.remover(id);
		
		return "redirect:/usuario/logado";
	}
	
//	@RequestMapping("/editarTarefa")
//	public String editarTarefa(@PathParam("id") Long id, Model model) {
//		model.addAttribute("tarefa", tarefaService.buscar(id));
//		
//		
//		return "pags/formTarefa";
//	}
	
}
