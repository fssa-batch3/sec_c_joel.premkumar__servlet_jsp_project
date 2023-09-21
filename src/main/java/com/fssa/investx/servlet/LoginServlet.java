package com.fssa.investx.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.stockmanagementapp.exception.UserServiceException;
import com.fssa.stockmanagementapp.model.User;
import com.fssa.stockmanagementapp.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		PrintWriter out = response.getWriter();
		if (email != null || password != null) {
			
				try {
					User currentUser = UserService.getUserByEmail(email);
					
					if (currentUser != null && currentUser.getPassword().equals(password)) {
						HttpSession session = request.getSession();
						session.setAttribute("email", currentUser.getEmailId());
			
						response.sendRedirect("./index.jsp");
					} else {
						out.println("Invalid email or password");
					}
				} catch ( UserServiceException e) {
					out.println(e.getMessage());
				}
			
		} else {
			out.println("email or password is null");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
