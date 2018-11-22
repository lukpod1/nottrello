package br.com.nottrello.model.entity;

import java.util.Date;

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
	private Long id;
	private String conteudo;
	private Date data_criacao = new Date();
	
	@ManyToOne
	@JoinColumn(name = "pergunta_id")
	private Pergunta pergunta;
	
	@ManyToOne
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	
	private Integer curtir = 0;	
	
	private Integer discurtir = 0;
	
	public Resposta() {
		
	}

	public Resposta(Long id, String conteudo, Date data_criacao, Pergunta pergunta, Usuario usuario, Integer curtir, Integer discurtir) {
		super();
		this.id = id;
		this.conteudo = conteudo;
		this.data_criacao = data_criacao;
		this.pergunta = pergunta;
		this.usuario = usuario;
		this.curtir = curtir;
		this.discurtir = curtir;
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



	public Date getData_criacao() {
		return data_criacao;
	}



	public void setData_criacao(Date data_criacao) {
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

	public Integer getCurtir() {
		return curtir;
	}

	public void setCurtir(Integer curtir) {
		this.curtir = curtir;
	}

	public Integer getDiscurtir() {
		return discurtir;
	}

	public void setDiscurtir(Integer discurtir) {
		this.discurtir = discurtir;
	}
	
	
}
