package br.com.nottrello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Projeto;
import br.com.nottrello.model.entity.Tarefa;

@Controller
public class TarefaController {
	
	@RequestMapping("/addTarefa")
	public String addTarefa(Tarefa tarefa) {
		Projeto projeto = new Projeto();
		projeto.getTarefas().add(tarefa);
		
		
		return "pags/usuariologado";
	}
}
