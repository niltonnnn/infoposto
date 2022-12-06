package br.edu.itb.academico.actions;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.database.ConnectionFactory;

public class ExcluirPostoWEB implements Action  {

		@Override
		public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		try {
			String Cnpj = request.getParameter("codigo");
			
			Connection con = ConnectionFactory.getConnectionSqlServer();
//			
			PreparedStatement ps = con.prepareStatement("DELETE FROM tbPosto WHERE Cnpj =?");
			ps.setString(1, Cnpj);
			ps.execute();
			return "/WEB-INF/jsp/ListaDePostos/ListaDePostos.jsp";
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return "/WEB-INF/jsp/ListaDePostos/ListaDePostos.jsp";

		}
			
		}
}
