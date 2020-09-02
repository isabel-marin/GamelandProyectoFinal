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
		String usuario = "INSERT INTO usuarios (idusuarios, nombreusuarios, apellido, DNI, tlf, codigoPostal, ciudad, email, password, rol) VALUES (?,?,?,?,?,?,?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setInt(1, u.getIdusuarios());
		pst.setString(2, u.getNombreusuarios());
		pst.setString(3, u.getApellido());
		pst.setString(4, u.getDNI());
		pst.setString(5, u.getTlf());
		pst.setString(6, u.getCodigoPostal());
		pst.setString(7, u.getCiudad());
		pst.setString(8, u.getEmail());
		pst.setString(9, u.getPassword());
		pst.setString(10, u.getRol());
		
		pst.executeLargeUpdate();
	}
	
	public void modificarUsuario (Usuario u) throws SQLException {
		String usuario = "UPDATE usuarios SET nombreusuarios = ?, apellido = ?, DNI = ?, tlf = ?, codigoPostal = ?, ciudad = ?, email = ?, password = ?, rol = ? WHERE idusuarios = ?";
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
		pst.setInt(10, u.getIdusuarios());
		
		pst.executeUpdate();
	}
	public void borrarUsuario(int idusuarios) throws SQLException {
		String usuario = "DELETE FROM usuarios WHERE idusuarios = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(usuario);
		pst.setInt(1, idusuarios);
		
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

}
