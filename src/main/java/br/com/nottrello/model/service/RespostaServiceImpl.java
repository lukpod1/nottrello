package br.com.nottrello.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.com.nottrello.model.entity.Resposta;

@Service
public class RespostaServiceImpl implements RespostaService {

	@Override
	public void salvar(Resposta resposta) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remover(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Resposta buscarPorId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Resposta> listarPorPergunta(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Resposta> listarPerguntas() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void like(Resposta resposta) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deslike(Resposta resposta) {
		// TODO Auto-generated method stub

	}

}
