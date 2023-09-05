package com.fssa.investx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.stockmanagementapp.exception.StockDAOException;
import com.fssa.stockmanagementapp.model.Stock;
import com.fssa.stockmanagementapp.service.StockService;

/**
 * Servlet implementation class InvestX
 */
@WebServlet("/ReadAllStocks")
public class ReadAllServlet extends HttpServlet {

	StockService service = new StockService();

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {
			List<Stock> stocks = service.readAllStocks();

			request.setAttribute("listStocks", stocks);

		} catch (StockDAOException e) {

			request.setAttribute("errorMsg", e.getMessage());
		}

		RequestDispatcher dis = request.getRequestDispatcher("/showallstocks.jsp");
		dis.forward(request, response);
	}

}
