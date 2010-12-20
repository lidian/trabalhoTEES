package app.models;

@javax.persistence.Entity
public class Codigo extends Entity {
	private String nome;
	private String tags;
	private String linguagem;
	private String trecho;
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setTags(String tags) {
		this.tags = tags;
	}
	
	public String getTags() {
		return tags;
	}
	
	public void setLinguagem(String linguagem) {
		this.linguagem = linguagem;
	}
	
	public String getLinguagem() {
		return linguagem;
	}
	
	public void setTrecho(String trecho) {
		this.trecho = trecho;
	}
	
	public String getTrecho() {
		return trecho;
	}
	
}
