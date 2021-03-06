package gameland.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gameland.modelo.Usuario;
import gameland.modelo.UsuarioDAO;



/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		UsuarioDAO usu = new UsuarioDAO();
		
		String pagDest = "login.jsp";
		
		try {
			
			Usuario usuario0 = usu.login(email, password);
			
			if(usuario0 !=null) {
				
				pagDest = "home.jsp";
				
				HttpSession session = request.getSession();
				session.setAttribute("nombreusuarios", usuario0.getNombreusuarios());
				session.setAttribute("apellido", usuario0.getApellido());
				session.setAttribute("DNI", usuario0.getDNI());
				session.setAttribute("tlf", usuario0.getTlf());
				session.setAttribute("codigoPostal", usuario0.getCodigoPostal());
				session.setAttribute("ciudad", usuario0.getCiudad());
				session.setAttribute("email", usuario0.getEmail());
				session.setAttribute("rol", usuario0.getRol());
				
			} else {
				String msgerror = "Correo o contraseņa incorrecta";
				request.setAttribute("msgerror", msgerror);
			}
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
		
		
	}
	}


