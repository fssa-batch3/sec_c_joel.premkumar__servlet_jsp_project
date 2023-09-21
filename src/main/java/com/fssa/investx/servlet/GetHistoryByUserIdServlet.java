package com.fssa.investx.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.stockmanagementapp.exception.InvalidStockDataException;
import com.fssa.stockmanagementapp.exception.StockDAOException;
import com.fssa.stockmanagementapp.model.History;
import com.fssa.stockmanagementapp.service.HistoryService;
import com.fssa.stockmanagementapp.service.UserService;

/**
 * Servlet implementation class GetHistoryByUserIdServlet
 */
@WebServlet("/GetHistoryByUserIdServlet")
public class GetHistoryByUserIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		
		String email = (String) session.getAttribute("email");
		
		int userId= UserService.getUserByEmail(email).getId();
		
		try {
			List<History> list = HistoryService.GethistoryByUser(userId);
			System.out.print(list);
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("./OrderHistory.jsp");
			rd.forward(request, response);
		} catch (InvalidStockDataException | StockDAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
