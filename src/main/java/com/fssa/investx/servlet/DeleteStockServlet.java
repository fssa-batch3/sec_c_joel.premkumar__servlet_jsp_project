package com.fssa.investx.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.stockmanagementapp.exception.StockDAOException;
import com.fssa.stockmanagementapp.service.StockService;

/**
 * Servlet implementation class DeleteStockServlet
 */
@WebServlet("/DeleteStockServlet")
public class DeleteStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StockService service = new StockService();
	ReadAllServlet readAll = new ReadAllServlet();

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

		String index = request.getParameter("stockId");
		int id = Integer.parseInt(index);

		try {
			if (service.deleteStock(id)) {

				request.setAttribute("successMsg", "Stock deleted successfully.");
				readAll.doGet(request, response);

			} else {

				request.setAttribute("successMsg", "Stock can't delete.");
			}
		} catch (StockDAOException e) {

			request.setAttribute("errorMsg", e.getMessage());

		}

	}

}
