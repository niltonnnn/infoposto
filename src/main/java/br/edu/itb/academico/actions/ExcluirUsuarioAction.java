package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

public class ExcluirUsuarioAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	try {
		int Id = Integer.parseInt(request.getParameter("id"));
		
		Connection con = ConnectionFactory.getConnectionSqlServer();
//		
		PreparedStatement ps = con.prepareStatement("DELETE FROM tbLogin WHERE IdUsuario =?");
		ps.setInt(1, Id);
		ps.execute();
		return "/WEB-INF/jsp/Usuarios/ListaDeUsuarios.jsp";
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
		return "/WEB-INF/jsp/Usuarios/ListaDeUsuarios.jsp";

	}
		
	}

}
