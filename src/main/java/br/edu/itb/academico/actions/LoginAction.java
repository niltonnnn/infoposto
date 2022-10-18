package br.edu.itb.academico.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				
				Connection con = ConnectionFactory.getConnectionSqlServer();
				String email,senha;
				
				email = request.getParameter("email");
				senha = request.getParameter("senha");
				boolean status;
				
				PreparedStatement ps = con.prepareStatement("SELECT * FROM tbLogin WHERE EMAIL = ? AND SENHA = ?");
				ps.setString(1, email);
				ps.setString(2, senha);
			    ResultSet rs = ps.executeQuery();
			    status = rs.next();   
			    if(status) {
			    System.out.print("logado");	
			    request.getRequestDispatcher("/WEB-INF/jsp/ListaDePostos/ListaDePostos.jsp").forward(request, response);
			    	
			    }else {
			     System.out.print("inválido");	
			     request.getRequestDispatcher("/WEB-INF/jsp/Erro.jsp").forward(request, response);
			     
			    }
				
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
