/**
 * This servlet handles the retrieval of a stock by name from the system and
 * forwards the data to a JSP page for display. If no stock with the given name
 * is found, it displays an error message.
 */
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
     * Handles HTTP POST requests for retrieving a stock by name from the system and
     * forwarding the data to a JSP page for display. If no stock with the given
     * name is found, it displays an error message.
     *
     * @param request  The HttpServletRequest object containing the stock name to be
     *                 retrieved.
     * @param response The HttpServletResponse object for responding to the client.
     * @throws ServletException If there's an issue during servlet processing.
     * @throws IOException      If there's an issue with I/O operations.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = (String) request.getParameter("stock_name");

        if (name == null || name.isEmpty()) {
            // If the provided name is null or empty, redirect to the ReadAllServlet to show all stocks.
            readAll.doGet(request, response);
        } else {
            try {
                // Attempt to retrieve the stock by name using the StockService.
                Stock stock = service.readByName(name);

                if (stock != null && stock.getId() != 0) {
                    // If a stock is found, display it in the JSP page.
                    List<Stock> stockList = new ArrayList<>();
                    request.setAttribute("listStocks", stockList);
                    request.setAttribute("successMsg", "Stock found.");
                    stockList.add(stock);
                } else {
                    // If no stock is found with the given name, display an error message.
                    request.setAttribute("errorMsg", "Stock cannot be retrieved.");
                }

            } catch (InvalidStockDataException | StockDAOException e) {
                // Handle exceptions related to invalid stock data or database errors.
                request.setAttribute("errorMsg", e.getMessage());
            } finally {
                // Forward the request and response to the showallstocks.jsp view.
                RequestDispatcher dis = request.getRequestDispatcher("/showallstocks.jsp");
                dis.forward(request, response);
            }
        }
    }
}
