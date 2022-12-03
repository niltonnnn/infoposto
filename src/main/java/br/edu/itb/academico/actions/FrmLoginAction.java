package br.edu.itb.academico.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8080/infoposto/web?action=FrmLoginAction

public class FrmLoginAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	

		return "/WEB-INF/jsp/TelaDeLogin/index.jsp";
	}

}
