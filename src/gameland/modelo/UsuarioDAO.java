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
		String usuario = "INSERT INTO usuarios (nombreusuarios, apellido, DNI, tlf, codigoPostal, ciudad, email, password, rol) VALUES (?,?,?,?,?,?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setString(1, u.getNombreusuarios());
		pst.setString(2, u.getApellido());
		pst.setString(3, u.getDNI());
		pst.setString(4, u.getTlf());
		pst.setString(5, u.getCodigoPostal());
		pst.setString(6, u.getCiudad());
		pst.setString(7, u.getEmail());
		pst.setString(8, u.getPassword());
		pst.setString(9, u.getRol());
		
		pst.executeUpdate();
	}
	
	public void modificarUsuario (Usuario u) throws SQLException {
		String usuario = "UPDATE usuarios SET nombreusuarios = ?, apellido = ?, DNI = ?, tlf = ?, codigoPostal = ?, ciudad = ?, password = ?, rol = ? WHERE email = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setString(1, u.getNombreusuarios());
		pst.setString(2, u.getApellido());
		pst.setString(3, u.getDNI());
		pst.setString(4, u.getTlf());
		pst.setString(5, u.getCodigoPostal());
		pst.setString(6, u.getCiudad());
		pst.setString(7, u.getPassword());
		pst.setString(8, u.getRol());
		pst.setString(9, u.getEmail());
		
		pst.executeUpdate();
	}
	public void borrarUsuario(String email) throws SQLException {
		String usuario = "DELETE FROM usuarios WHERE email = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setString(1, email);
		
		pst.executeUpdate();
	}
	public Usuario login(String email, String password) throws SQLException {
		Usuario u = null;
		String usuario = "SELECT nombreusuarios, apellido, email, password, rol FROM usuarios WHERE email = ? AND password = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setString(1, email);
		pst.setString(2, password);
		
		rs = pst.executeQuery();
		
		if (rs.next()) {
			u = new Usuario();
			u.setNombreusuarios(rs.getString("nombreusuarios"));
			u.setApellido(rs.getString("apellido"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setRol(rs.getString("rol"));
		}
		return u;
	}
	
	public Usuario getUsuario(String email) throws SQLException { //Cambios
		
		Usuario u = null;
		String sql = "SELECT * FROM usuarios WHERE email = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);
		
		rs = pst.executeQuery();
		
		if(rs.next()) {
			u = new Usuario();
			u.setNombreusuarios(rs.getString("nombreusuarios"));
			u.setApellido(rs.getString("apellido"));
			u.setDNI(rs.getString("DNI"));
			u.setTlf(rs.getString("tlf"));
			u.setCodigoPostal(rs.getString("codigopostal"));
			u.setCiudad(rs.getString("ciudad"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setRol(rs.getString("rol"));
			
		}
		return u;
		
	}

}
