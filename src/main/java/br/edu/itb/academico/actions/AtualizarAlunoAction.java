package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class AtualizarAlunoAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String cpf = request.getParameter("cpf");
		String dataNascimento = request.getParameter("data_nascimento");
		String sexo = request.getParameter("sexo");
		String situacao = request.getParameter("situacao");
		
		Aluno aluno = new Aluno();
		aluno.setId(id);
		aluno.setNome(nome);
		aluno.setEmail(email);
		aluno.setCpf(cpf);
		Calendar cal = Calendar.getInstance();
		Date dt = new SimpleDateFormat("yyyy-MM-dd").parse(dataNascimento);
		cal.setTime(dt);
		aluno.setDataNascimento(cal);
		aluno.setSexo(sexo);
		aluno.setSituacao(situacao);
	
		Connection connection = (Connection) request.getAttribute("connection");
		AlunoDao alunoDao = new AlunoDao(connection);
		
		

		if (alunoDao.updateAluno(aluno) != 0) {
			System.out.println("Aluno atualizado com sucesso!");
		} else {
			System.out.println("Erro: Aluno não atualizado !!");
		}

		return "/WEB-INF/jsp/aluno-atualizado.jsp";
	}

}
