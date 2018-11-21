package br.com.nottrello.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "resposta")
@Entity
public class Resposta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "resposta_id")
	private Long id;
	private String conteudo;
	private String data_criacao;
	
	@ManyToOne
	@JoinColumn(name = "pergunta_id")
	private Pergunta pergunta;
	
	@ManyToOne
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	
	
	
	public Resposta() {
		
	}

	

	public Resposta(Long id, String conteudo, String data_criacao, Pergunta pergunta, Usuario usuario) {
		super();
		this.id = id;
		this.conteudo = conteudo;
		this.data_criacao = data_criacao;
		this.pergunta = pergunta;
		this.usuario = usuario;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getConteudo() {
		return conteudo;
	}



	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}



	public String getData_criacao() {
		return data_criacao;
	}



	public void setData_criacao(String data_criacao) {
		this.data_criacao = data_criacao;
	}



	public Pergunta getPergunta() {
		return pergunta;
	}



	public void setPergunta(Pergunta pergunta) {
		this.pergunta = pergunta;
	}



	public Usuario getUsuario() {
		return usuario;
	}



	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}



	
	
	
	
}
