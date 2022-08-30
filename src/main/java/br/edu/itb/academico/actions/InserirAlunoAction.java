package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class InserirAlunoAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String nome = request.getParameter("nome");
		System.out.println(nome);
		String email = request.getParameter("email");
		String cpf = request.getParameter("cpf");
		String dataNascimento = request.getParameter("data_nascimento");
		String sexo = request.getParameter("sexo");
		String situacao = request.getParameter("situacao");
		String tipoUsuario = "Aluno";
		Aluno aluno = new Aluno();
		aluno.setNome(nome);
		aluno.setEmail(email);
		Random random = new Random();
		aluno.setSenha(Integer.toString(random.nextInt(100000))); // senha provis�ria
		aluno.setCpf(cpf);
		Calendar cal = Calendar.getInstance();
		Date dt = new SimpleDateFormat("yyyy-MM-dd").parse(dataNascimento);
		cal.setTime(dt);
		aluno.setDataNascimento(cal);
		aluno.setSexo(sexo);
		aluno.setSituacao(situacao);
		aluno.setTipoUsuario(tipoUsuario);
		aluno.setMatricula(aluno.gerarMatricula());
		
		Connection connection = (Connection) request.getAttribute("connection");
		AlunoDao alunoDao = new AlunoDao(connection);
		
		

		if (alunoDao.insertAluno(aluno) != 0) {
			System.out.println("Aluno inserido com sucesso!");
		} else {
			System.out.println("Erro: Aluno não inserido !!");
		}

		return "/WEB-INF/jsp/aluno-inserido.jsp";

	}

}
