package com.fssa.investx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import com.fssa.stockmanagementapp.model.User;
import com.fssa.stockmanagementapp.service.UserService;

/**
 * Servlet implementation class GetUserJson
 */
@WebServlet("/GetUserJson")
public class GetUserJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		String user =  (String) session.getAttribute("email");
		
		
		
		
			User id = UserService.getUserByEmail(user);
		
		   List<User> list = new ArrayList<>();
		   list.add(id);
		    JSONArray userjson = new JSONArray(list);
			out.println(userjson);
			out.flush();
			out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
