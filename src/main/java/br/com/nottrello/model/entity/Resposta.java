package br.com.nottrello.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Resposta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "resposta_id")
	private Long id;
	private String conteudo;
	private String data_criacao;
	private Usuario like;
	private Usuario deslike;
	
	@ManyToOne
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	
	@ManyToOne
	@JoinColumn(name = "pergunta_id")
	private Pergunta pergunta;

	public Resposta() {
		super();
	}

	public Resposta(Long id, String conteudo, String data_criacao, Usuario like, Usuario deslike, Usuario usuario,
			Pergunta pergunta) {
		super();
		this.id = id;
		this.conteudo = conteudo;
		this.data_criacao = data_criacao;
		this.like = like;
		this.deslike = deslike;
		this.usuario = usuario;
		this.pergunta = pergunta;
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

	public Usuario getLike() {
		return like;
	}

	public void setLike(Usuario like) {
		this.like = like;
	}

	public Usuario getDeslike() {
		return deslike;
	}

	public void setDeslike(Usuario deslike) {
		this.deslike = deslike;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Pergunta getPergunta() {
		return pergunta;
	}

	public void setPergunta(Pergunta pergunta) {
		this.pergunta = pergunta;
	}
	
	
}
