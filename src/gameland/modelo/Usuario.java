package gameland.modelo;

public class Usuario {
	
	private int idusuarios;
	private String nombreusuarios;
	private String apellidos;
	private String dni;
	private String telefono;
	private String codigopostal;
	private String ciudad;
	private String nick;
	private String email;
	private String pass;
	private String rol;
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Usuario(int idusuarios, String nombreusuarios, String apellidos, String dni, String telefono,
			String codigopostal, String ciudad, String nick, String email, String pass, String rol) {
		super();
		this.idusuarios = idusuarios;
		this.nombreusuarios = nombreusuarios;
		this.apellidos = apellidos;
		this.dni = dni;
		this.telefono = telefono;
		this.codigopostal = codigopostal;
		this.ciudad = ciudad;
		this.nick = nick;
		this.email = email;
		this.pass = pass;
		this.rol = rol;
	}

	public int getIdusuarios() {
		return idusuarios;
	}

	public void setIdusuarios(int idusuarios) {
		this.idusuarios = idusuarios;
	}

	public String getNombreusuarios() {
		return nombreusuarios;
	}

	public void setNombreusuarios(String nombreusuarios) {
		this.nombreusuarios = nombreusuarios;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getCodigopostal() {
		return codigopostal;
	}

	public void setCodigopostal(String codigopostal) {
		this.codigopostal = codigopostal;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Usuario [idusuarios=" + idusuarios + ", nombreusuarios=" + nombreusuarios + ", apellidos=" + apellidos
				+ ", dni=" + dni + ", telefono=" + telefono + ", codigopostal=" + codigopostal + ", ciudad=" + ciudad
				+ ", nick=" + nick + ", email=" + email + ", pass=" + pass + ", rol=" + rol + "]";
	}

}
