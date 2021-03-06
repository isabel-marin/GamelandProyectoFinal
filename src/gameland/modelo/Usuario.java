package gameland.modelo;

public class Usuario {

	private String nombreusuarios;
	private String apellido;
	private String DNI;
	private String tlf;
	private String codigoPostal;
	private String ciudad;
	private String email;
	private String password;
	private String rol;

	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Usuario(String nombreusuarios, String apellido, String DNI, String tlf, String codigoPostal, String ciudad,
			String email, String password, String rol) {
		super();
		this.nombreusuarios = nombreusuarios;
		this.apellido = apellido;
		this.DNI = DNI;
		this.tlf = tlf;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.email = email;
		this.password = password;
		this.rol = rol;
	}

	public String getNombreusuarios() {
		return nombreusuarios;
	}

	public void setNombreusuarios(String nombreusuarios) {
		this.nombreusuarios = nombreusuarios;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String DNI) {
		this.DNI = DNI;
	}

	public String getTlf() {
		return tlf;
	}

	public void setTlf(String tlf) {
		this.tlf = tlf;
	}

	public String getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Usuario [nombreusuarios=" + nombreusuarios + ", apellido=" + apellido + ", DNI=" + DNI + ", tlf=" + tlf
				+ ", codigoPostal=" + codigoPostal + ", ciudad=" + ciudad + ", email=" + email + ", password="
				+ password + ", rol=" + rol + "]";
	}

}
