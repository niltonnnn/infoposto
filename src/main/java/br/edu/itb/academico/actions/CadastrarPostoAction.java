package br.edu.itb.academico.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

@WebServlet("/CadastrarPostoAction")
public class CadastrarPostoAction extends HttpServlet   {
	
	//https://www.4devs.com.br/gerador_de_cnpj
	
	private static final long serialVersionUID = 1L; 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				
				Connection con = ConnectionFactory.getConnectionSqlServer();
				String nomedono,nomeposto,endereco,bairro,email,numero,cnpj,valorcombustivel,senhausuario,bandeira;
				nomedono = request.getParameter("nomedono");
				nomeposto = request.getParameter("nomeposto");
				endereco = request.getParameter("endereco");
				bairro = request.getParameter("bairro");
				email = request.getParameter("email");
				numero = request.getParameter("numero");
				cnpj = request.getParameter("cnpj");
				valorcombustivel = request.getParameter("valorcombustivel");
				senhausuario = request.getParameter("senhausuario");

				PreparedStatement ps = con.prepareStatement("INSERT INTO tbPosto(NomeDono, NomePosto, Endereco , Bairro , "
						+ "Email, Numero, ValorCombustivel, SenhaUsuario)VALUES(?,?,?,?,?,?,?,?)");
				ps.setString(1, nomedono);
				ps.setString(2, nomeposto);
				ps.setString(3, endereco);
				ps.setString(4, bairro);
				ps.setString(5, email);
				ps.setString(6, numero);
				ps.setDouble(7, Double.parseDouble(valorcombustivel));
				ps.setString(8, senhausuario);
				ps.execute();
				
				 request.getRequestDispatcher("/WEB-INF/jsp/ListaDePostos/ListaDePostos.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print(e.getMessage());
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
}

	
}
