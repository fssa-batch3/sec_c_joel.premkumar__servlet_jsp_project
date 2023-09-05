package com.fssa.investx.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

/**
 * Servlet implementation class ReadByNameServlet
 */
@WebServlet("/ReadByNameServlet")
public class ReadByNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	StockService service = new StockService();

	ReadAllServlet readAll = new ReadAllServlet();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = (String) request.getParameter("stock_name");

		if (name == null || name.isEmpty()) {

			readAll.doGet(request, response);

		} else {

			try {

				Stock stock = service.readByName(name);

				if (stock != null && stock.getId() != 0) {

					List<Stock> stockList = new ArrayList<>();
					request.setAttribute("listStocks", stockList);
					request.setAttribute("successMsg", "Stock found.");
					stockList.add(stock);

				} else {

					request.setAttribute("errorMsg", "stock cannot be retrieved.");

				}

			} catch (InvalidStockDataException | StockDAOException e) {
				request.setAttribute("errorMsg", e.getMessage());
			} finally {
				RequestDispatcher dis = request.getRequestDispatcher("/showallstocks.jsp");
				dis.forward(request, response);
			}

		}

	}

}
