package gameland.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import gameland.servicios.Conexion;

public class JuegoDAO {
	
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public void altaJuego(Juego j) throws SQLException  {

		String juego = "INSERT INTO juegos (idjuegos, nombrejuegos, precio, descripcion) VALUES (?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(juego);
		pst.setInt(1, j.getIdjuegos());
		pst.setString(2, j.getNombrejuegos());
		pst.setString(3, j.getPrecio());
		pst.setString(4, j.getDescripcion());
		
		pst.executeUpdate();
	}
	
	public void modificarJuego (Juego j) throws SQLException {
		String juego = "UPDATE juegos SET nombrejuegos = ?, precio = ?, descripcion = ? WHERE idjuegos = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(juego);
		pst.setString(1, j.getNombrejuegos());
		pst.setString(2, j.getPrecio());
		pst.setString(3, j.getDescripcion());
		pst.setInt(4, j.getIdjuegos());
		
		pst.executeUpdate();
	}
	
	public void borrarJuego(int idjuegos) throws SQLException {
		String juego = "DELETE FROM juegos WHERE idjuegos = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(juego);
		pst.setInt(1, idjuegos);
		
		pst.executeUpdate();
	}
}