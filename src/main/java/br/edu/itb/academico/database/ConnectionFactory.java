package br.edu.itb.academico.database;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class ConnectionFactory {
<<<<<<< HEAD
	
	public static Connection conn = null;

	private final static String  URLSQLSERVER = "jdbc:sqlserver://localhost:1433;"
			+ "user=sa;password=@ITB123456;databaseName=InfoPosto";
=======
>>>>>>> 2d88caad4e2e81761367e84921713ea55f668db0

   public static Connection conn = null;
    private final static String  URLSQLSERVER = "jdbc:sqlserver://localhost:1433;"
            + "user=sa;password=@ITB123456;databaseName=InfoPosto";

    public static Connection getConnectionSqlServer () throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").getDeclaredConstructor().newInstance();
        
        conn = DriverManager.getConnection(URLSQLSERVER);
        System.out.println("Conectado: " + conn);
        return conn;
    }
            



}
