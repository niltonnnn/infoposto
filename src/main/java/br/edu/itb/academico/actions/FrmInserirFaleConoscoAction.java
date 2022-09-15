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
@WebServlet("/CadastrarFaleConoscoAction")
public class FrmInserirFaleConoscoAction extends HttpServlet  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
			
			Connection con = ConnectionFactory.getConnectionSqlServer();
			String nome,email,mensagem;
			nome = request.getParameter("name");
			email = request.getParameter("email");
			mensagem = request.getParameter("message");
			PreparedStatement ps = con.prepareStatement("INSERT INTO tbFaleConosco(NOME,EMAIL,MENSAGEM)VALUES(?,?,?)");
			ps.setString(1, nome);
			ps.setString(2, email);
			ps.setString(3, mensagem);
			ps.execute();
			
			 request.getRequestDispatcher("/WEB-INF/jsp/FaleConosco/FaleConosco.jsp").forward(request, response);
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
