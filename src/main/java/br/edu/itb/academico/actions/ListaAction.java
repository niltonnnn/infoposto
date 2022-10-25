package br.edu.itb.academico.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.Posto;

public class ListaAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			Connection con = ConnectionFactory.getConnectionSqlServer();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from tbPosto");
			List<Posto> listaPostos = new ArrayList<Posto>();
			while (rs.next()) {
				String nomedono = rs.getString("NomeDono");
				String nomeposto = rs.getString("NomePosto");
				String endereco = rs.getString("Endereco");
				String bairro = rs.getString("Bairro");
				String numero = rs.getString("Numero");
				String email = rs.getString("Email");
				String senha = rs.getString("SenhaUsuario");
				Double valor = rs.getDouble("ValorUsuario");

				Posto p = new Posto(nomedono, nomeposto, endereco, bairro, numero, email, valor, senha);
				listaPostos.add(p);

			}
			rs.close();

			stmt.close();
			request.setAttribute("postos",listaPostos);
			}catch(Exception ex) {
				
				System.out.print(ex.getMessage());
			}
		
		
	 return "/WEB-INF/jsp/ListaDePostos/ListaDePostos.jsp";
	}
	
	public static List<Posto> getAll(){
		try {
		Connection con = ConnectionFactory.getConnectionSqlServer();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM	tbPosto");
		List<Posto> listaPostos = new ArrayList<Posto>();
		while (rs.next()) {
			String nomedono = rs.getString("NomeDono");
			String nomeposto = rs.getString("NomePosto");
			String endereco = rs.getString("Endereco");
			String bairro = rs.getString("Bairro");
			String numero = rs.getString("Numero");
			String email = rs.getString("Email");
			String senha = rs.getString("SenhaUsuario");
			Double valor = rs.getDouble("ValorCombustivel");

			Posto p = new Posto(nomedono, nomeposto, endereco, bairro, numero, email, valor, senha);
			listaPostos.add(p);

		}
		rs.close();

		stmt.close();
		return listaPostos;
		}catch(Exception ex) {
			
			System.out.print(ex.getMessage());
			return null;
		}
		
	
		
	} 
	


}
