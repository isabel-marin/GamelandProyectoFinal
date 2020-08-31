package gameland.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import gameland.servicios.Conexion;

public class UsuarioDAO {
	
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public void altaUsuario (Usuario u) throws SQLException {
		String usuario = "INSERT INTO usuarios (idusuarios, nombreusuarios, apellidos, dni, telefono, codigopostal, ciudad, nick, email, pass, rol) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setInt(1, u.getIdusuarios());
		pst.setString(2, u.getNombreusuarios());
		pst.setString(3, u.getApellidos());
		pst.setString(4, u.getDni());
		pst.setString(5, u.getTelefono());
		pst.setString(6, u.getCodigopostal());
		pst.setString(7, u.getCiudad());
		pst.setString(8, u.getNick());
		pst.setString(9, u.getEmail());
		pst.setString(10, u.getPass());
		pst.setString(11, u.getRol());
	
		pst.executeUpdate();
	}
	public void modificarUsuario (Usuario u) throws SQLException {
		String usuario = "UPDATE usuarios SET nombreusuarios = ?, apellidos = ?, dni = ?, telefono = ?, codigopostal = ?, ciudad = ?, nick = ?, email = ?, pass = ?, rol = ? WHERE idusuarios = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setString(1, u.getNombreusuarios());
		pst.setString(2, u.getApellidos());
		pst.setString(3, u.getDni());
		pst.setString(4, u.getTelefono());
		pst.setString(5, u.getCodigopostal());
		pst.setString(6, u.getCiudad());
		pst.setString(7, u.getNick());
		pst.setString(8, u.getEmail());
		pst.setString(9, u.getPass());
		pst.setString(10, u.getRol());
		pst.setInt(11, u.getIdusuarios());
		
		pst.executeUpdate();
	}
	public void borrarUsuario(int idusuarios) throws SQLException {
		String usuario = "DELETE FROM usuarios WHERE idusuarios = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setInt(1, idusuarios);
		
		pst.executeUpdate();
	}

}
