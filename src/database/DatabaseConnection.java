package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import log.TimerLoggable;

public class DatabaseConnection extends TimerLoggable {

	private Connection conn = null;
	private PreparedStatement statement = null;
	private ResultSet results = null;
	
	public DatabaseConnection(String dbname, String username, String password) {
		try {
			conn = DriverManager.getConnection(dbname, username, password);
		} catch (SQLException e) {
			logError(e.getMessage());
		}
	}
	
	public void query(String query, Object... values) {
		try {
			statement = conn.prepareStatement(query);
			for(int i = 0; i < values.length; i++) {
				statement.setObject(i+1, values[i]);
			}
			results = statement.executeQuery();
		} catch (SQLException e) {
			logError(e.getMessage());
		}
	}
	
}
