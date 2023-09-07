/**
 * This servlet handles the retrieval of all stocks from the system and forwards
 * the data to a JSP page for display.
 */
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
 * Servlet implementation class ReadAllServlet
 */
@WebServlet("/ReadAllStocks")
public class ReadAllServlet extends HttpServlet {

    StockService service = new StockService();

    private static final long serialVersionUID = 1L;

    /**
     * Handles HTTP GET requests to retrieve all stocks from the system and forward
     * the data to a JSP page for display.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If there's an issue during servlet processing.
     * @throws IOException      If there's an issue with I/O operations.
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        try {
            // Retrieve a list of all stocks from the StockService.
            List<Stock> stocks = service.readAllStocks();

            // Set the list of stocks as an attribute in the request for JSP rendering.
            request.setAttribute("listStocks", stocks);

        } catch (StockDAOException e) {
            // Handle exceptions related to stock data access.
            request.setAttribute("errorMsg", e.getMessage());
        }

        // Forward the request and response to the showallstocks.jsp view.
        RequestDispatcher dis = request.getRequestDispatcher("/showallstocks.jsp");
        dis.forward(request, response);
    }
}
