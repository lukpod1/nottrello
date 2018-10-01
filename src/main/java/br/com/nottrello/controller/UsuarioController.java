package br.com.nottrello.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.nottrello.model.entity.Usuario;
import br.com.nottrello.model.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController{
	
	private UsuarioService usuarioService;
	
	@GetMapping("/novo")
    public String novo(Model model) {

        model.addAttribute("usuario", new Usuario());

        return "pags/formCadastro";
    }

    @PostMapping("/salvar")
    public String salvar(Usuario usuario) {   	
    		
    	usuarioService.salvar(usuario);   	
        

        return "redirect:/entrar";
    }	
	
	@GetMapping("/entrar")
	public String entrar() {
		return "pags/formLogin";
	}
}
