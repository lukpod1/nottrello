package br.com.nottrello.model.enums;

public enum Status {

	AFAZER(1, "A fazer"),
	FAZENDO(2, "Fazendo"),
	EMTESTE(3, "Em teste"),
	CONCLUIDO(4, "Concluido");
	
	private int cod;
	private String descricao;
	
	private Status(int cod, String descricao) {
		this.cod = cod;
		this.descricao = descricao;
	}

	public int getCod() {
		return cod;
	}

	public String getDescricao() {
		return descricao;
	}
	
	public static Status toEnum(Integer cod) {
		if(cod == null) {
			return null;
		}
		
		for(Status x : Status.values()) {
			if(cod.equals(x.getCod())) {
				return x;
			}
		}
		throw new IllegalArgumentException("Id inválido " + cod);
	}
	
	
}
