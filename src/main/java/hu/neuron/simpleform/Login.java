package hu.neuron.simpleform;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("Login")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String password = request.getParameter("password");

		ServletContext servletContext = request.getServletContext();
		ArrayList<RegisterForm> list = (ArrayList<RegisterForm>) servletContext.getAttribute("list");
		RegisterForm registerForm = new RegisterForm(name, password);
		if (name == null || name.equals("")) {

			request.setAttribute("error", "Nem adott meg felhasználó nevet!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);

		} else if (password == null || password.equals("")) {

			request.setAttribute("error", "Nem adott meg jelszót!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);

		}
		if (list != null) {
			boolean successLogin = false;
			for (RegisterForm registerForm2 : list) {
				if (registerForm2.getName().equals(name) && registerForm2.getPassword().equals(password)) {
					successLogin = true;
					request.getRequestDispatcher("/home.jsp").forward(request, response);

				}

			}
			if (successLogin == false) {
				request.setAttribute("error", "Nem megfelelõ jelszó, vagy felhasználónév!");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("error", "Nem regisztrált még felhasználó!");
			request.getRequestDispatcher("/register.jsp").forward(request, response);

		}

	}

}
