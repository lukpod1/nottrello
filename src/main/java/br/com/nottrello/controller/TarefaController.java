package br.com.nottrello.controller;


import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Tarefa;
import br.com.nottrello.model.service.ProjetoService;
import br.com.nottrello.model.service.StatusService;
import br.com.nottrello.model.service.TarefaService;

@Controller
public class TarefaController{

	@Autowired
	private TarefaService tarefaService;
	
	@Autowired
	private ProjetoService projetoService;
	
	@Autowired
	private StatusService statusService;
	
	public TarefaController(TarefaService tarefaService) {
		super();
		this.tarefaService = tarefaService;
	}

	@RequestMapping("/salvarTarefa")
	public String salvarTarefa(Tarefa tarefa) {
		tarefaService.salvar(tarefa);
		
		return "redirect:/projeto/projeto?id="+tarefa.getProjeto().getId();
	}
	
	@RequestMapping("/excluirTarefa")
	public String removeTarefa(@PathParam("id") Long id) {
		
		Tarefa  tarefa = tarefaService.buscar(id);
		Long projeto_id = tarefa.getProjeto().getId();
		tarefaService.remover(id);
		
		
		
		return "redirect:/projeto/projeto?id="+projeto_id;
	}
	
//	@RequestMapping("/mudarStatus")
//	public String mudarStatus(@PathParam("id") Long id) {
//		
//		Tarefa  tarefa = tarefaService.buscar(id);
//		Status status = statusService.buscarPorId(tarefa.getStatus().getId());
//		statusService.salvar(status);
//		
//		return
//		
//		
//	}
	

	
}
