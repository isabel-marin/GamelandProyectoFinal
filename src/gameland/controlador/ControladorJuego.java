package gameland.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gameland.modelo.Juego;
import gameland.modelo.JuegoDAO;

/**
 * Servlet implementation class ControladorJuego
 */
@WebServlet("/ControladorJuego")
public class ControladorJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorJuego() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("opcion");
		int idjuegos = Integer.parseInt(request.getParameter("idjuegos"));
		JuegoDAO jueDAO = new JuegoDAO();
		
		Juego j = null;
		
		String pagDest = "modificarJuego.jsp";
		
		switch(opcion) {
			case "e":
				try {
					j = jueDAO.getJuego(idjuegos);
					request.setAttribute("idjuegos",j);
					pagDest = "modificarJuego.jsp";
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				break;
			case "b":
				try {
					jueDAO.borrarJuego(idjuegos);
					pagDest = "home.jsp";
				} catch(SQLException e) {
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
		//idjuegos, nombrejuegos, precio, descripcion
		int idjuegos = Integer.parseInt(request.getParameter("idjuegos"));
		String nombrejuegos = request.getParameter("nombrejuegos");
		String precio = request.getParameter("precio");
		String descripcion = request.getParameter("descripcion");
		String opcion = request.getParameter("opcion");
		Juego j = new Juego();
		
		j.setIdjuegos(idjuegos);
		j.setNombrejuegos(nombrejuegos);
		j.setPrecio(precio);
		j.setDescripcion(descripcion);
		
		JuegoDAO juDAO = new JuegoDAO();
		
		String pagDest = "home.jsp";
		
		try {
			if(opcion == null) {
				juDAO.altaJuego(j);
				
			}else {
				juDAO.modificarJuego(j);
				pagDest = "modificarJuego.jsp";
			}
				
		}catch(SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	}

}
