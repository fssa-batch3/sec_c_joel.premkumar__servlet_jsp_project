package com.fssa.investx.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.stockmanagementapp.service.UserService;
import com.fssa.stockmanagementapp.exception.UserServiceException;
import com.fssa.stockmanagementapp.exception.ValidatorException;
import com.fssa.stockmanagementapp.model.User;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String name = request.getParameter("name");
			request.setAttribute("name", name);
			System.out.print(name);
			String email = request.getParameter("email");
			request.setAttribute("email", email);
			Long phone = Long.parseLong(request.getParameter("phone"));
			request.setAttribute("phone", phone);
			String password = request.getParameter("password");
			request.setAttribute("password", password);
			HttpSession session = request.getSession();
			User user = new User(name, email, phone, password);
			UserService userService = new UserService();
			userService.addUser(user);
//			response.getWriter().append("Success");
			System.out.println("succes");
			request.setAttribute("errorMsg", "Success");
			RequestDispatcher rd = request.getRequestDispatcher("SignupLogin.jsp");
			rd.forward(request, response);

		} catch (Exception e) {

			System.out.println("error");
//			response.getWriter().append(e.getMessage());
			request.setAttribute("errorMsg", e.getMessage());
			System.out.println(e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("SignupLogin.jsp");
			rd.forward(request, response);

		}
	}
}