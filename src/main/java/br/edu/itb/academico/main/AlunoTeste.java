package br.edu.itb.academico.main;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class AlunoTeste {

	public static void main(String[] args) {

		Connection connection = null;

		// Inserindo(cadastrando) 1 aluno
		// Obs: Pela regra de neg�cio, n�o � poss�vel cadastrar 2 usu�rios com o mesmo
		// email e com a mesma matr�cula
/*  teste ok
		try {
			connection = ConnectionFactory.connectionSqlServer();
			Aluno aluno = new Aluno("Sandra", "Al0011", "Aluno", "sandra@gmail.com", "123");
			AlunoDao alunoDao = new AlunoDao(connection);
			if (alunoDao.insertAluno(aluno) != 0) {
				System.out.println("Aluno inserido com sucesso!");
			} else {
				System.out.println("Erro: Aluno n�o inserido!");
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
*/
		// Listando todos os alunos
		// connection = ConnectionFactory.connectionSqlServer();
		// System.out.println("Conectado com sucesso " + connection);
       // teste ok
	/*	try {
			connection = ConnectionFactory.connectionSqlServer();
			AlunoDao alunoDao = new AlunoDao(connection);
			List<Aluno> alunos = new ArrayList<Aluno>();
			alunos.addAll(alunoDao.getAlunos());
			for (int i = 0; i < alunos.size(); i++) {
				System.out.println("Nome: " + alunos.get(i).getNome() + " Matricula: " + alunos.get(i).getMatricula());
			}

		} catch (Exception e) {
			throw new RuntimeException(e);
		}*/
		
		/*
		// Atualizando um aluno
		// teste ok
		try {
			connection = ConnectionFactory.connectionSqlServer();
			AlunoDao alunoDao = new AlunoDao(connection);
			Aluno aluno = new Aluno();
			long id = 2;
			String dataDeNascimento = "2000-10-18";
			aluno.setId(id);
			aluno.setNome("Amanda Pereira");
			aluno.setMatricula("Al12547");
			aluno.setTipoUsuario("Aluno");
			aluno.setEmail("amandapereira@hotmail.com");
			Calendar cal = Calendar.getInstance();
			Date dt = new SimpleDateFormat("yyyy-MM-dd").parse(dataDeNascimento);
			cal.setTime(dt);
			aluno.setDataNascimento(cal);
			if(alunoDao.updateAluno(aluno) != 0 ) {
				System.out.println("Aluno atualizado com sucesso!");
			}else {
				System.out.println("Erro: aluno n�o atualizado!");
			}	
			
		}catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		// Excluindo um aluno
		// teste ok
		try {
			connection = ConnectionFactory.connectionSqlServer();
			AlunoDao alunoDao = new AlunoDao(connection);
			long id = 3;
			if(alunoDao.deleteAluno(id) != 0) {
				System.out.println("Aluno exclu�do com sucesso!");
			}else {
				System.out.println("Erro: Aluno n�o exclu�do!");
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		*/

	}

}
