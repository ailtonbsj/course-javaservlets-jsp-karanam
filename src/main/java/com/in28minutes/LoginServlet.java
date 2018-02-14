package com.in28minutes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	/*
	 * You need access your browser:
	 * http://localhost:8080/?name=Jose+Ailton
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		request.setAttribute("name", name);
				
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		request.setAttribute("name", name);
		String pass = request.getParameter("pass");
		request.setAttribute("pass", pass);
		
		request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
	}
}