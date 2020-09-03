package gameland.servicios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

	private static Conexion instancia;
	private Connection connection;
	//Base de datos en mysql
	//private String url = "jdbc:mysql://localhost:3306/tienda?useSSL=false&serverTimezone=UTC";
	//private String user = "root";
	//private String password = "1234";

	//Base de datos en db4free
	private String url = "jdbc:mysql://db4free.net:3306/dominionweb?useSSL=false&serverTimezone=UTC";
	private String user = "danielj";
	private String password = "123456789";
	

	private Conexion() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.connection = DriverManager.getConnection(url, user, password);
		} catch (Exception ex) {
			System.out.println("Conexion a BD incorrecta: " + ex.getMessage());
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public static Conexion getInstance() throws SQLException {
		if (instancia == null) {
			instancia = new Conexion();
		} else if (instancia.getConnection().isClosed()) {
			instancia = new Conexion();
		}
		return instancia;
	}

}