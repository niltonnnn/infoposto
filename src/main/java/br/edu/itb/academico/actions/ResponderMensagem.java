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

@WebServlet("/ResponderMensagem")
public class ResponderMensagem extends HttpServlet   {
	
	//https://www.4devs.com.br/gerador_de_cnpj
	
	private static final long serialVersionUID = 1L; 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				
				Connection con = ConnectionFactory.getConnectionSqlServer();
				
				String Resposta = "";
				long millis=System.currentTimeMillis();  
				java.sql.Date date=new java.sql.Date(millis);  
				int Codigo = 0;
				
				Codigo =  Integer.parseInt(request.getParameter("codigo"));
				Resposta = request.getParameter("resposta");
	  		PreparedStatement ps = con.prepareStatement("UPDATE tbFaleConosco SET Resposta =?, DataResposta=? WHERE Codigo = ?");
				ps.setString(1,Resposta);
				ps.setDate(2, date);
				ps.setInt(3, Codigo);
				ps.execute();
				
				 request.getRequestDispatcher("/WEB-INF/jsp/FaleConosco/ListaFaleConosco.jsp").forward(request, response);
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
