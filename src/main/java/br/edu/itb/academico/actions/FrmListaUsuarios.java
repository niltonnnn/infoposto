package br.edu.itb.academico.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.Usuario;

// http://localhost:8080/infoposto/web?action=FrmLoginAction

public class FrmListaUsuarios implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		try {
		Connection con = ConnectionFactory.getConnectionSqlServer();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * from tbLogin");
		List<Usuario> listaUsu = new ArrayList<Usuario>();
		while (rs.next()) {
			int Id = rs.getInt("IdUsuario");
			String Email = rs.getString("Email");
			String Senha = rs.getString("Senha");
			String Nome = rs.getString("Nome");
			String Admin = rs.getString("Admin");
		
			Usuario user = new Usuario(Id,Nome,Email,Senha,Admin);
			listaUsu.add(user);

		}
		rs.close();

		stmt.close();
		request.setAttribute("usuarios", listaUsu);
		
		}catch(Exception ex) {
			
			System.out.print(ex.getMessage());
		}

		return "/WEB-INF/jsp/Usuarios/ListaDeUsuarios.jsp";
	}

}
