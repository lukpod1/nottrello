package br.com.nottrello.model.entity;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Tarefa {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String prioridadeCor;
	private String dataVencimento;
	
	@ManyToOne
	@JoinColumn(name="status_id")
	private Status status;
	
	private String descricao;

	
	@ManyToOne
	@JoinColumn(name="projeto_id")
	private Projeto projeto;
	

	public Tarefa() {
		
	}

	public Tarefa(Long id, String nome, String prioridadeCor, String dataVencimento, Status status,
			String descricao, Projeto projeto) {
		super();
		this.id = id;
		this.nome = nome;
		this.prioridadeCor = prioridadeCor;
		this.dataVencimento = dataVencimento;
		this.status = status;
		this.descricao = descricao;
		this.projeto = projeto;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	

	public String getPrioridadeCor() {
		return prioridadeCor;
	}

	public void setPrioridadeCor(String prioridadeCor) {
		this.prioridadeCor = prioridadeCor;
	}

	public String getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(String dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Projeto getProjeto() {
		return projeto;
	}

	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	
	
	
	

}
