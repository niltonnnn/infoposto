package br.edu.itb.academico.actions;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;
import br.edu.itb.academico.model.Posto;

public class ListaPostoAction extends HttpServlet  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void getAllPostos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
			String bandeira = rs.getString("Bandeira");
			String servicos = rs.getString("Servicos");
			String cnpj = rs.getString("cnpj");

			Posto p = new Posto(nomedono, nomeposto, endereco, bairro, numero, email, valor, senha,bandeira,servicos,cnpj);
			listaPostos.add(p);

		}
		rs.close();

		stmt.close();
		request.setAttribute("postos", listaPostos);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		}catch(Exception ex) {
			
			System.out.print(ex.getMessage());
		}
		
	}
}
