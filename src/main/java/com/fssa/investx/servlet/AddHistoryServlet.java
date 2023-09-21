package com.fssa.investx.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.stockmanagementapp.exception.InvalidStockDataException;
import com.fssa.stockmanagementapp.exception.StockDAOException;
import com.fssa.stockmanagementapp.service.HistoryService;
import com.fssa.stockmanagementapp.service.UserService;

/**
 * Servlet implementation class AddHistoryServlet
 */
@WebServlet("/AddHistoryServlet")
public class AddHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		int userId= UserService.getUserByEmail(email).getId();
		
		String stockName = request.getParameter("stockName");
		int qty =Integer.parseInt( request.getParameter("qty"));
		double inr = Double.parseDouble(request.getParameter("inr"));
		double usd = Double.parseDouble(request.getParameter("usd"));
		
		PrintWriter out = response.getWriter();
		
		try {
			boolean res = HistoryService.addhistory(userId, stockName, qty, inr, usd);
			out.print(res);
			out.flush();
			out.close();
			out.append("Success");
		} catch (InvalidStockDataException | StockDAOException e) {
			out.append(e.getMessage());
		}

		
	}

}
