package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.FaleConosco;

public class FrmResponderMensagem implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  int Codigo = Integer.parseInt(request.getParameter("codigo"));
		
		
		
		Connection con = ConnectionFactory.getConnectionSqlServer();
//		
		
		PreparedStatement ps = con.prepareStatement("SELECT * FROM tbFaleConosco WHERE Codigo =?");
		ps.setInt(1, Codigo);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			FaleConosco f = new FaleConosco(rs.getInt("Codigo"), rs.getString("Nome"), rs.getString("Email"), rs.getString("Mensagem"), null, null);
			request.setAttribute("mensagemAtual", f);
		}
		
		ps.executeQuery();
		return "/WEB-INF/jsp/FaleConosco/ResponderFaleConosco.jsp";
	}

}
