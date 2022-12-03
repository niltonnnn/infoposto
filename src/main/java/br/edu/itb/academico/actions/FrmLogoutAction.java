package br.edu.itb.academico.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrmLogoutAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 HttpSession session = request.getSession(false);
		 session.invalidate();
		
		return "/WEB-INF/jsp/home/home.jsp";
	}

}