package br.com.nottrello.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class AutorizadorInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		if (uri.endsWith("entrar") || uri.endsWith("logar") || uri.endsWith("usuario/novo") || uri.endsWith("salvar") || uri.endsWith("home") || 
				uri.contains("assets") || uri.contains("imgs") || uri.contains("scripts") || uri.contains("style")) {
			return true;
		}
		
		if (request.getSession().getAttribute("usuarioLogado") != null) {
			return true;
		}
		response.sendRedirect("/usuario/entrar");
		
		return false;
	}
	
}
