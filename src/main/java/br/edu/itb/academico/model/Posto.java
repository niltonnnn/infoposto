package br.edu.itb.academico.model;

public class Posto {

	
	public String getNomeDono() {
		return NomeDono;
	}
	public void setNomeDono(String nomeDono) {
		NomeDono = nomeDono;
	}
	public String getNomePosto() {
		return NomePosto;
	}
	public void setNomePosto(String nomePosto) {
		NomePosto = nomePosto;
	}
	public String getEndereco() {
		return Endereco;
	}
	public void setEndereco(String endereco) {
		Endereco = endereco;
	}
	public String getBairro() {
		return Bairro;
	}
	public void setBairro(String bairro) {
		Bairro = bairro;
	}
	public String getNumero() {
		return Numero;
	}
	public void setNumero(String numero) {
		Numero = numero;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Double getValorCombustivel() {
		return ValorCombustivel;
	}
	public void setValorCombustivel(Double valorCombustivel) {
		ValorCombustivel = valorCombustivel;
	}
	public String getSenhaUsuario() {
		return SenhaUsuario;
	}
	public void setSenhaUsuario(String senhaUsuario) {
		SenhaUsuario = senhaUsuario;
	}
	private String NomeDono;
	private String NomePosto;
	private String Endereco;
	private String Bairro;
	private String Numero;
	private String Email;
	private Double ValorCombustivel;
	private String SenhaUsuario;
	private String Bandeira;
	public String getBandeira() {
		return Bandeira;
	}
	public void setBandeira(String bandeira) {
		Bandeira = bandeira;
	}
	public String getServicos() {
		return Servicos;
	}
	public void setServicos(String servicos) {
		Servicos = servicos;
	}
	private String Servicos;

	
	public Posto(String nomeDono,String nomePosto,String endereco,String bairro, String numero,String email,Double valorCombustivel,String senhaUsuario,String bandeira,String servicos) {
	this.setNomeDono(nomeDono);
	this.setNomePosto(nomePosto);
	this.setEndereco(endereco);
	this.setBairro(bairro);
	this.setNumero(numero);
	this.setEmail(email);
	this.setValorCombustivel(valorCombustivel);
	this.setSenhaUsuario(senhaUsuario);
	this.setBandeira(bandeira);
	this.setServicos(servicos);
	}
	
	
}
