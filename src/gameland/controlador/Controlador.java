package gameland.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gameland.modelo.Usuario;
import gameland.modelo.UsuarioDAO;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String opcion = request.getParameter("opcion");
		int idusuarios = Integer.parseInt(request.getParameter("idusuarios"));
		UsuarioDAO usDAO = new UsuarioDAO();
		
		Usuario u = null;
		
		String pagDest = "modificarUsuario.jsp";
		
		switch (opcion){
			case "e":
				try {
					u = usDAO.getUsuario(idusuarios);
					request.setAttribute("idusuarios", u);
					pagDest = "modificarUsuario.jsp";
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				break;
			case "b":
				try {
					
					usDAO.borrarUsuario(idusuarios);
					
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				break;
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 	
		int idusuarios = Integer.parseInt(request.getParameter("idusuarios"));
		String nombreusuarios = request.getParameter("nombreusuarios");
		String apellido = request.getParameter("apellido");
		String DNI = request.getParameter("DNI");
		String tlf = request.getParameter("tlf");
		String codigopostal = request.getParameter("codigopostal");
		String ciudad = request.getParameter("ciudad");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String rol = request.getParameter("rol");
		String opcion = request.getParameter("opcion");
		
		Usuario u = new Usuario();
		u.setIdusuarios(idusuarios);
		u.setNombreusuarios(nombreusuarios);
		u.setApellido(apellido);
		u.setDNI(DNI);
		u.setTlf(tlf);
		u.setCodigoPostal(codigopostal);
		u.setCiudad(ciudad);
		u.setEmail(email);
		u.setPassword(password);
		u.setRol(rol);
		
		UsuarioDAO usurDAO = new UsuarioDAO();
		
		String pagDest = "modificarUsuario.jsp";  // Cambiar a la conveniente o home o inicio
		
		try {
			if (opcion == null) {
				usurDAO.altaUsuario(u);
			}else {
				usurDAO.modificarUsuario(u);
				pagDest= "modificarUsuario.jsp";
			}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			
				
		}

	}
}
