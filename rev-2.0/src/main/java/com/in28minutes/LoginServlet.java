package com.in28minutes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in28minutes.todo.TodoService;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	
	private UserValidationService userValidationService = new UserValidationService();
	private TodoService todoService = new TodoService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		request.getRequestDispatcher("/WEB-INF/views/login.jsp")
			.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String pass = request.getParameter("pass");
		boolean isUserValid = userValidationService.isUserValid(login, pass);
		if(isUserValid) {
			request.setAttribute("login", login);
			request.setAttribute("pass", pass);
			request.setAttribute("todos", todoService.retrieveTodos());
			request.getRequestDispatcher("/WEB-INF/views/welcome.jsp")
				.forward(request, response);
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp")
				.forward(request, response);
		}
	}

}