/**
 * This servlet handles the addition of a new stock to the system.
 */
package com.fssa.investx.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.stockmanagementapp.exception.InvalidStockDataException;
import com.fssa.stockmanagementapp.exception.StockDAOException;
import com.fssa.stockmanagementapp.model.Stock;
import com.fssa.stockmanagementapp.service.StockService;

@WebServlet("/stock-form")
public class AddStockServlet extends HttpServlet {

	// Create an instance of the StockService for stock-related operations.
	StockService service = new StockService();

	/**
	 * Handles the HTTP POST request to add a new stock to the system.
	 *
	 * @param request  The HttpServletRequest object containing the stock data.
	 * @param response The HttpServletResponse object for responding to the client.
	 * @throws ServletException If there's an issue during servlet processing.
	 * @throws IOException      If there's an issue with I/O operations.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieve stock data from the request parameters.
		String name = request.getParameter("name");
		String isin = request.getParameter("isin");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));

		// Create a Stock object with the retrieved data.
		Stock stock = new Stock();
		stock.setName(name);
		stock.setIsin(isin);
		stock.setDescription(description);
		stock.setPrice(price);

		try {
			// Attempt to add the stock to the system using the StockService.
			if (service.addStock(stock)) {
				request.setAttribute("successMsg", "Stock added successfully");
			} else {
				request.setAttribute("errorMsg", "Stock not inserted");
			}
		} catch (InvalidStockDataException | StockDAOException e) {
			// Handle exceptions related to invalid stock data or database errors.
			request.setAttribute("errorMsg", e.getMessage());
		}

		// Forward the request and response to the addstock.jsp view.
		RequestDispatcher dis = request.getRequestDispatcher("/addstock.jsp");
		dis.forward(request, response);
	}
}
