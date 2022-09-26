package br.edu.itb.academico.database;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public abstract class ConnectionFactory {
	
	public static Connection conn = null;
	private final static String  URLSQLSERVER = "jdbc:sqlserver://DESKTOP-L0N3OP9\\FTZ;user=sa;password=123456;databaseName=InfoPosto";

	public static Connection getConnectionSqlServer () throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").getDeclaredConstructor().newInstance();
		
		conn = DriverManager.getConnection(URLSQLSERVER);
		System.out.println("Conectado: " + conn);
		return conn;
	}
			

}
