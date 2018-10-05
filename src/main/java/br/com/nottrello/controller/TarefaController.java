package br.com.nottrello.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping("/addTarefa")
	public String addTarefa(Tarefa tarefa) {
		tarefaService.salvar(tarefa);
		
		return "redirect:/usuario/logado";
	}
	
//	@RequestMapping(value = "/{id}/exluirtarefa", method = RequestMethod.GET)
//	public String removeTarefa(@PathVariable("id") Long id) {
//		tarefaService.remover(id);
//		
//		return "redirect:/usuario/logado";
//	}
	
}
