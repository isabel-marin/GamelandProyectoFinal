package gameland.modelo;

public class Juego {
	
	private int idjuegos;
	private String nombrejuegos;
	private String precio;
	private String descripcion;
	
	public Juego() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Juego(int idjuegos, String nombrejuegos, String precio, String descripcion) {
		super();
		this.idjuegos = idjuegos;
		this.nombrejuegos = nombrejuegos;
		this.precio = precio;
		this.descripcion = descripcion;
	}

	public int getIdjuegos() {
		return idjuegos;
	}

	public void setIdjuegos(int idjuegos) {
		this.idjuegos = idjuegos;
	}

	public String getNombrejuegos() {
		return nombrejuegos;
	}

	public void setNombrejuegos(String nombrejuegos) {
		this.nombrejuegos = nombrejuegos;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Juego [idjuegos=" + idjuegos + ", nombrejuegos=" + nombrejuegos + ", precio=" + precio
				+ ", descripcion=" + descripcion + "]";
	}
	
}
