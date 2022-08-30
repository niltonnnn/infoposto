package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class ListarAlunosAction implements Action{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Connection connection = (Connection) request.getAttribute("connection");
		AlunoDao alunoDao = new AlunoDao(connection);
		List<Aluno> alunos = new ArrayList<Aluno>();
		alunos.addAll(alunoDao.getAlunos());
		
		
		request.setAttribute("listaDeAlunos", alunos);
		
		return "/WEB-INF/jsp/lista-de-alunos.jsp";
		
	}

	
}
