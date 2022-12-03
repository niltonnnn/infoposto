package br.edu.itb.academico.actions;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.service.AlunoDao;

public class ExcluirAlunoAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Long id = Long.parseLong(request.getParameter("id"));
		
		
	
		Connection connection = (Connection) request.getAttribute("connection");
		AlunoDao alunoDao = new AlunoDao(connection);
		
		

		if (alunoDao.deleteAluno(id) != 0) {
			System.out.println("Aluno excluído com sucesso!");
		} else {
			System.out.println("Erro: Aluno não excluído !!");
		}

		return "/WEB-INF/jsp/aluno-excluido.jsp";
	}

}
