package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.FaleConosco;
import br.edu.itb.academico.model.Posto;

public class AlterarPosto implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  String Cnpj = request.getParameter("codigo");
		
		
		
		Connection con = ConnectionFactory.getConnectionSqlServer();
//		
		
		PreparedStatement ps = con.prepareStatement("SELECT * FROM tbPosto WHERE CNPJ =?");
		ps.setString(1, Cnpj);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
	
			
			Posto p = new Posto(rs.getString("NomeDono"), rs.getString("NomePosto"), rs.getString("Endereco"),  rs.getString("Bairro"),rs.getString("Numero"), rs.getString("Email"), rs.getDouble("ValorCombustivel"),  rs.getString("SenhaUsuario"), rs.getString("Bandeira"), rs.getString("Servicos"), rs.getString("Cnpj"));
			request.setAttribute("posto", p);
		}
	
		return "/WEB-INF/jsp/CadastroDePosto/AlterarPosto.jsp";
	}

}
