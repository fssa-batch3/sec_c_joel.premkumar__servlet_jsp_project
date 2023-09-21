package com.fssa.investx.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		System.out.print(name);
		String email = request.getParameter("email");
		Long phone = Long.parseLong(request.getParameter("phone"));
		String password = request.getParameter("password");
		
		User user =new User(name, email, phone, password); 
		
		try {
			UserService userService = new UserService();
			userService.addUser(user);
			response.getWriter().append("Success");
		} catch (UserServiceException | ValidatorException e) {
			response.getWriter().append(e.getMessage());

		}
	}

}
