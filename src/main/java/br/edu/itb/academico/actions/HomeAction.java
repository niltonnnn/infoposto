package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.edu.itb.academico.service.AlunoDao;

// localhost:8080/infoposto/web?action=HomeAction

public class HomeAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	

		return "/WEB-INF/jsp/home/home.jsp";
	}

}
