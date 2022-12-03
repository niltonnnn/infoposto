package br.edu.itb.academico.actions;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:8080/infoposto/web?action=HomeAction

public class HomeAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	

		return "/WEB-INF/jsp/home/home.jsp";
	}

}
