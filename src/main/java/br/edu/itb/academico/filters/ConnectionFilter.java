package br.edu.itb.academico.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

import br.edu.itb.academico.database.ConnectionFactory;

/**
 * Servlet Filter implementation class ConnectionFilter
 */
//@WebFilter("/ConnectionFilter")
@WebFilter(filterName = "ConnectionFilter", urlPatterns= {"/*"})
public class ConnectionFilter extends HttpFilter implements Filter {
    
	private static final long serialVersionUID = 1L;

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
  
         try {
        	// Connection connection = ConnectionFactory.getConnectionSqlServer();
        	// request.setAttribute("connection", connection);
        	 
        	// pass the request along the filter chain
     		chain.doFilter(request, response);
     		
     	//	connection.close();
     		//System.out.println("encerrando filtro...");
        	 
         }catch(Exception e) {
        	throw new ServletException(e);
         }
             
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
