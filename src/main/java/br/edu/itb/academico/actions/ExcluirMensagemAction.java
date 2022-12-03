package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

public class ExcluirMensagemAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	try {
		int Codigo = Integer.parseInt(request.getParameter("codigo"));
		
		Connection con = ConnectionFactory.getConnectionSqlServer();
//		
		PreparedStatement ps = con.prepareStatement("DELETE FROM tbFaleConosco WHERE Codigo =?");
		ps.setInt(1, Codigo);
		ps.execute();
		return "/WEB-INF/jsp/FaleConosco/ListaFaleConosco.jsp";
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
		return "/WEB-INF/jsp/FaleConosco/ListaFaleConosco.jsp";

	}
		
	}

}
