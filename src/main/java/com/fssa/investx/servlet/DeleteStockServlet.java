/**
 * This servlet handles the deletion of a stock from the system.
 */
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
     * Handles HTTP GET requests. This method is not currently implemented in this
     * servlet.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If there's an issue during servlet processing.
     * @throws IOException      If there's an issue with I/O operations.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * Handles HTTP POST requests for deleting a stock from the system.
     *
     * @param request  The HttpServletRequest object containing the stock ID to be
     *                 deleted.
     * @param response The HttpServletResponse object for responding to the client.
     * @throws ServletException If there's an issue during servlet processing.
     * @throws IOException      If there's an issue with I/O operations.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve the stock ID to be deleted from the request parameters.
        String index = request.getParameter("stockId");
        int id = Integer.parseInt(index);

        try {
            // Attempt to delete the stock using the StockService.
            if (service.deleteStock(id)) {
                // If deletion is successful, set a success message and trigger a refresh of stock data.
                request.setAttribute("successMsg", "Stock deleted successfully.");
                readAll.doGet(request, response);
            } else {
                // If deletion fails, set an error message.
                request.setAttribute("errorMsg", "Stock can't be deleted.");
            }
        } catch (StockDAOException e) {
            // Handle exceptions related to stock data access.
            request.setAttribute("errorMsg", e.getMessage());
        }
    }
}
