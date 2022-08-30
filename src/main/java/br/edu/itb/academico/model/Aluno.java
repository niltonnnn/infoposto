package br.edu.itb.academico.model;

import java.util.ArrayList;
import java.util.List;

public class Aluno extends Usuario {
	
	public Aluno() {
		
	}
	
	public Aluno(String nome, String matricula, String tipoUsuario, String email, String senha) {
		super(nome, matricula, tipoUsuario, email, senha);
	}

	
	protected String situacao;
	
	// L�gica nova fazer com os alunos posteriormente (mesma l�gica da API)
	//private List<Matricula> matriculas = new ArrayList<>();

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
/*
	public List<Matricula> getMatriculas() {
		return matriculas;
	}

	public void setMatriculas(List<Matricula> matriculas) {
		this.matriculas = matriculas;
	}
	
	*/
	public String gerarMatricula() {
		int min = 1000;
		int max = 999999;
		String prefix = "Al";
		int aleatorio = min + (int)  ((Math.random() * (max - min ) + 1));
		String matricula = prefix + aleatorio;
		return matricula;
	}
	
		
}
