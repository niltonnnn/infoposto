package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Aluno;
import br.edu.itb.academico.service.AlunoDao;

public class FrmInserirAlunoAction implements Action{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		
		return "/WEB-INF/jsp/frm-inserir-aluno.jsp";
		
	}

	
}
