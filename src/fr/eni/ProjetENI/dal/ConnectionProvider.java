package fr.eni.ProjetENI.dal;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

abstract class ConnectionProvider {
	private static DataSource dataSource;
	
	static {
		Context context;
		try {
			context = new InitialContext();
			// Récupere les information du fichier /WebContent/META-INF/context.xml
			ConnectionProvider.dataSource = (DataSource) context.lookup("java:comp/env/jdbc/pool_cnx");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("Impossible d'accèder à la base de données");
		}
	}
	
	public static Connection getConnection() throws SQLException{
		return ConnectionProvider.dataSource.getConnection();
	}
}
