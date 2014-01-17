package br.com.easistemas.canonico;

import java.io.Serializable;

public class Contato implements Serializable {

	private static final long serialVersionUID = 684618091872235359L;

	private String nome;
	private String sobreNome;
	private String telefone;
	private Email email;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobreNome() {
		return sobreNome;
	}
	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public Email getEmail() {
		return email;
	}
	public void setEmail(Email email) {
		this.email = email;
	}
	
	
	
}
