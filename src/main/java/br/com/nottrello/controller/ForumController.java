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

import br.com.nottrello.model.entity.LikeDislike;
import br.com.nottrello.model.entity.Pergunta;
import br.com.nottrello.model.entity.Resposta;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.service.LikeDislikeService;
import br.com.nottrello.model.service.PerguntaService;
import br.com.nottrello.model.service.RespostaService;
import br.com.nottrello.model.service.StatusService;

@Controller
@RequestMapping("/forum")
public class ForumController {

	@Autowired
	private PerguntaService perguntaService;
	
	@Autowired
	private RespostaService respostaService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private LikeDislikeService likeDislikeService;

	public ForumController(PerguntaService perguntaService, RespostaService respostaService) {
		super();
		this.perguntaService = perguntaService;
		this.respostaService = respostaService;
	}
	
	@PostMapping("/pergunta/salvar")
	public String salvar(Pergunta pergunta) {
		perguntaService.salvar(pergunta);
		
		return "redirect:/forum/perguntas";
	}
	
	@GetMapping("/perguntas")
	public String ListaPerguntas(Model model, HttpSession session) {
		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		model.addAttribute("perguntas", perguntaService.listarPerguntas());
		model.addAttribute("status", statusService.listarStatus());
		
		return "/pags/forum";
		
	}
	
	@PostMapping("/resposta/salvar")
	public String salvar(Resposta resposta) {
		respostaService.salvar(resposta);
		
		return "redirect:/forum/respostas?id="+resposta.getPergunta().getId();
	}
		
	@GetMapping("/respostas")
	public String ListaRespostas(@PathParam("id") Long id, Model model, HttpSession session) {
		
		model.addAttribute("pergunta", perguntaService.buscarPorId(id));
		model.addAttribute("respostas", respostaService.listarPorPergunta(id));
		model.addAttribute("likes", likeDislikeService.listarPorCurtir());
		model.addAttribute("dislikes", likeDislikeService.listarPorDiscurtir());
		
	
		model.addAttribute("qtResposta", respostaService.listarPorPergunta(id).size());

		return "/pags/pergunta";
		
	}
	
	@GetMapping("/curtir/resposta")
	public String curtir(@PathParam("id") Long id, Model model, HttpSession session) {
		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		Resposta resposta = respostaService.buscarPorId(id);
		
		likeDislikeService.curtir(resposta, usuario);	
		
		return "redirect:/forum/respostas?id="+resposta.getPergunta().getId();
	}
	
	@GetMapping("/discurtir/resposta")
	public String discurtir(@PathParam("id") Long id, HttpSession session) {
		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		Resposta resposta = respostaService.buscarPorId(id);
		
		likeDislikeService.discurtir(resposta, usuario);	
	
		
		return "redirect:/forum/respostas?id="+resposta.getPergunta().getId();
	}
	
	
	
}
