package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.Posto;
import br.edu.itb.academico.model.Usuario;

public class AlterarUsuario implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  int id = Integer.parseInt(request.getParameter("id"));
		
		
		
		Connection con = ConnectionFactory.getConnectionSqlServer();
//		
		
		PreparedStatement ps = con.prepareStatement("SELECT * FROM tbLogin WHERE IdUsuario = ?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			Usuario u  = new Usuario(rs.getInt("IdUsuario"),rs.getString("Nome"),rs.getString("Email"),rs.getString("Senha"),rs.getString("Admin"));
			//nt id , String nome,String email,String senha,String admin) {
//			Posto p = new Posto(rs.getString("NomeDono"), rs.getString("NomePosto"), rs.getString("Endereco"),  rs.getString("Bairro"),rs.getString("Numero"), rs.getString("Email"), rs.getDouble("ValorCombustivel"),  rs.getString("SenhaUsuario"), rs.getString("Bandeira"), rs.getString("Servicos"), rs.getString("Cnpj"));
			request.setAttribute("usuario", u);
		}
	
		return "/WEB-INF/jsp/FormularioDeCadastro/AlterarUsuario.jsp";
	}

}
