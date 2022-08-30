package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class FrmAtualizarAlunoAction implements Action{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
	 
		String idString = request.getParameter("id");
		Long id = Long.parseLong(idString);
		Connection connection = (Connection) request.getAttribute("connection");
		AlunoDao alunoDao = new AlunoDao(connection);
		
		Aluno aluno = alunoDao.getAlunoById(id);
		//SimpleDateFormat dataFormatada = new SimpleDateFormat("yyyy-MM-dd");
	//	String dataNascimento = dataFormatada.format(aluno.getDataNascimento().getTime());
		
		
		
	
		request.setAttribute("aluno", aluno);
		//request.setAttribute("dataNascimento", dataNascimento);
		
		return "/WEB-INF/jsp/frm-atualizar-aluno.jsp";
		
	}

	
}
