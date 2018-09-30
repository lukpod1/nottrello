package br.com.nottrello.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.RequestDispatcher;
import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.service.UsuarioService;

@Controller
public class UsuarioController extends HttpServlet{
	
	private UsuarioService usuarioService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Usuario usuario = new Usuario();		
		usuario.setNome(req.getParameter("nome"));
		usuario.setEmail(req.getParameter("email"));
		usuario.setSenha(req.getParameter("senha"));
		
		usuarioService.salvar(usuario);(usuario);
		
		RequestDispatcher rd = req.getRequestDispatcher("/formLogin.jsp");
		rd.forward(req, resp);
	}
	
	@PostMapping("/inscrever")
	public String inscrever(Usuario usuario, HttpServletRequest rqs) {
		
		
		
		return "pags/formLogin";
	}
	
	
	
	
	@GetMapping("/logar")
	public String entrar() {
		return "pags/formLogin";
	}
}
