package br.edu.itb.academico.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

@WebServlet("/AlteraUsuarioAction")
public class AlteraUsuarioAction extends HttpServlet   {
	
	//https://www.4devs.com.br/gerador_de_cnpj
	
	private static final long serialVersionUID = 1L; 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				
				
				
				Connection con = ConnectionFactory.getConnectionSqlServer();
				String nome,senha,email,admin;
			   int id = 0;
				
				id =  Integer.parseInt(request.getParameter("id"));
				nome = request.getParameter("nome");
			    senha = request.getParameter("senha");
				email = request.getParameter("email");
				admin = request.getParameter("admin");
				
				PreparedStatement ps = con.prepareStatement("UPDATE  tbLogin SET Nome=?, Email = ? , Senha = ?,Admin= ? WHERE IdUsuario = ? ");
				ps.setString(1, nome);
				ps.setString(2, email);
				ps.setString(3, senha);
				ps.setString(4, admin);
				ps.setInt(5, id);
				
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
