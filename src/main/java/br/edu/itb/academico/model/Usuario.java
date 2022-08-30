package br.edu.itb.academico.model;

import java.sql.Timestamp;
import java.util.Calendar;




public abstract class Usuario {
	
	protected Long id;
	protected String nome;
	protected String cpf;
	protected String matricula;
	protected String tipoUsuario;
	protected Calendar dataNascimento;
	protected String email;
	protected String senha;
	protected String sexo;
	protected String rua;
	protected String bairro;
	protected String numero;
	protected String cidade;
	protected String estado;
	protected String pais;
	protected String cep;
	protected String telefoneFixo;
	protected String telefoneCelular;
	protected Timestamp createdAt;
	protected Timestamp updatedAt;
	
	public Usuario () {
		
	}
	
	public Usuario(String nome, String matricula, String tipoUsuario, String email, String senha) {
		this.nome = nome;
		this.matricula = matricula;
		this.tipoUsuario = tipoUsuario;
	//	this.email = this.isValidEmailAddress(email) ? email : null;
		this.senha = senha;
	}
	/*
	   private  boolean isValidEmailAddress(String email) {
	        boolean result = true;
	        try {
	            InternetAddress emailAddr = new InternetAddress(email);
	            emailAddr.validate();
	        } catch (AddressException ex) {
	            result = false;
	        }
	        return result;
	    }*/
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
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getTipoUsuario() {
		return tipoUsuario;
	}
	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
	public Calendar getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
	//	this.email = this.isValidEmailAddress(email) ? email : null;
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getTelefoneFixo() {
		return telefoneFixo;
	}
	public void setTelefoneFixo(String telefoneFixo) {
		this.telefoneFixo = telefoneFixo;
	}
	public String getTelefoneCelular() {
		return telefoneCelular;
	}
	public void setTelefoneCelular(String telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	public Timestamp getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Timestamp updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	
	
}
