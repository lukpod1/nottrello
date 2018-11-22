package br.com.nottrello.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LikeDislike {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;

	@ManyToOne
	@JoinColumn(name = "resposta_id")
	private Resposta resposta;

	private Boolean positivo;

	public LikeDislike() {
		super();
	}

	public LikeDislike(Long id, Usuario usuario, Boolean positivo) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.positivo = positivo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Boolean isPositivo() {
		return positivo;
	}

	public void setPositivo(Boolean positivo) {
		this.positivo = positivo;
	}

	public Resposta getResposta() {
		return resposta;
	}

	public void setResposta(Resposta resposta) {
		this.resposta = resposta;
	}
	
	

}
