package br.edu.itb.academico.model;

import java.util.Date;

public class FaleConosco {
	
	public int Codigo;
	public int getCodigo() {
		return Codigo;
	}
	public void setCodigo(int codigo) {
		Codigo = codigo;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMensagem() {
		return Mensagem;
	}
	public void setMensagem(String mensagem) {
		Mensagem = mensagem;
	}
	public String Nome;
	public String Email;
	public String Mensagem;
	public Date DataResposta;
	public String Resposta;
	
	public String getResposta() {
		return Resposta;
	}
	public void setResposta(String resposta) {
		Resposta = resposta;
	}
	public Date getDataResposta() {
		return DataResposta;
	}
	public void setDataResposta(Date dataResposta) {
		DataResposta = dataResposta;
	}
	public FaleConosco(int codigo,String nome,String email,String mensagem, String resposta,Date dataResposta ) {
	this.setCodigo(codigo);
	this.setNome(nome);
	this.setEmail(email);
	this.setMensagem(mensagem);
	this.setDataResposta(dataResposta);
	this.setResposta(resposta);
	}
	

}
