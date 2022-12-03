package br.edu.itb.academico.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.actions.Action;

/**
 * Servlet implementation class AlunoController
 */

// http://localhost:8080/infoposto/web?action=HomeAction

// Guilherme Pereira

@WebServlet(name= "AlunoController", urlPatterns= {"/web"})
public class WebController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WebController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action_site = request.getParameter("action");
		String nomeClasse = "br.edu.itb.academico.actions." + action_site;
		try {
			Class<?> classe = Class.forName(nomeClasse);
			Action action = (Action) classe.getDeclaredConstructor().newInstance();
			String pagina = action.executa(request, response);
			request.getRequestDispatcher(pagina).forward(request, response);
		} catch(Exception e) {
			throw new ServletException();
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action_site = request.getParameter("action");
		System.out.println(action_site);
		String nomeClasse = "br.edu.itb.academico.actions." + action_site;
		try {
			Class<?> classe = Class.forName(nomeClasse);
			Action action = (Action) classe.getDeclaredConstructor().newInstance();
			String pagina = action.executa(request, response);
			request.getRequestDispatcher(pagina).forward(request, response);
		} catch(Exception e) {
			throw new ServletException();
		}	
	}

}
