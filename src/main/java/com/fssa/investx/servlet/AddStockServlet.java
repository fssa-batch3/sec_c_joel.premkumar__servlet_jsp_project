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

	StockService service = new StockService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String isin = request.getParameter("isin");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));

		Stock stock = new Stock(name, isin, description, price);

		try {

			if (service.addStock(stock)) {

				request.setAttribute("successMsg", "Stock added successfully");

			} else {

				request.setAttribute("errorMsg", "Stock not inserted");
			}
		} catch (InvalidStockDataException | StockDAOException e) {

			request.setAttribute("errorMsg", e.getMessage());
		}

		RequestDispatcher dis = request.getRequestDispatcher("/addstock.jsp");
		dis.forward(request, response);
	}
}
