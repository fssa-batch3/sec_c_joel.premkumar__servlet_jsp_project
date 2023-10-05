<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.stockmanagementapp.model.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Stocks Page</title>
    <!-- Link to Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
    /* ... Your existing styles ... */

    /* Adjustments for the main content container */
    .container {
        background-color: #fff; /* White Background */
        color: #333; /* Dark text color */
        border-radius: 8px; /* Rounded corners */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        padding: 20px;
        margin-top: 20px;
    }

    /* Button hover color */
    .btn-primary:hover {
        background-color: #00cc66; /* Dark Green on hover */
    }

    /* Form input styles */
    .form-input {
        background-color: #f7f7f7; /* Light Gray Background */
        color: #333; /* Dark text color */
    }

    /* Table styles */
    .table th,
    .table td {
        border: 1px solid #e2e2e2; /* Light Gray border */
        padding: 8px;
    }

    .table th {
        background-color: #f7f7f7; /* Light Gray Background */
        color: #333; /* Dark text color */
    }

    .table tr:nth-child(even) {
        background-color: #f2f2f2; /* Slightly darker Gray for even rows */
    }
</style>

</head>
<body class="bg-gray-100 font-roboto">



    <!-- Header Section -->
<header class="header">
    <div class="container mx-auto flex justify-between items-center">
        <!-- Replace 'your-logo-url.png' with the actual URL of your logo image -->
       <a href="Profile.jsp"> </a> <img src="Assets/images/InvestX Logo.png" alt="Company Logo" class="w-30 h-12"> </a>
        <h1 class="text-2xl font-semibold text-white">Stock Management</h1>
        <div class="search-bar flex">
            <form action="<%=request.getContextPath()%>/ReadByNameServlet" method="post" class="flex">
                <input class="form-input bg-white text-gray-800 py-2 px-3 rounded-l-md" name="stock_name" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary rounded-r-md px-4 py-2 bg-green-500 text-white rounded-md hover:bg-blue-600" type="submit">Search</button>
            </form>
        </div>
    </div>
</header>


    <!-- Alert Messages -->
    <div class="container mx-auto mt-4">
        <%
        String success = (String) request.getAttribute("successMsg");
        String error = (String) request.getAttribute("errorMsg");
        %>

        <%
        if (error != null && !(error.isEmpty())) {
        %>
        <div class="bg-red-500 text-white py-2 px-4 mb-4 rounded-md">
            <p><%=error%></p>
        </div>
        <%
        }
        if (success != null && !(success.isEmpty()) && error == null) {
        %>
        <div class="bg-green-500 text-white py-2 px-4 mb-4 rounded-md">
            <p><%=success%></p>
        </div>
        <%
        }
        %>
    </div>
    <%
		String name = (String) request.getAttribute("name");
    %>

    <!-- Main Content Section -->
    <div class="container mx-auto mt-4 bg-white rounded-md shadow-lg">
        <h3 class="text-xl font-semibold text-white-800 p-4"><%=name %> Investment Portfolio</h3>
        <%
        List<Stock> stockList = (List<Stock>) request.getAttribute("listStocks");
        %>
        <%
        int serialNumber = 1;
        %>

        <%
        if (stockList != null && !stockList.isEmpty() && stockList.get(0).getId() != 0) {
        %>
        <table class="table-auto w-full bg-white mt-4">
            <thead class="bg-black text-white">
                <tr>
                    <th class="px-4 py-2">Sl.No</th>
                    <th class="px-4 py-2">Name</th>
                    <th class="px-4 py-2">ISIN</th>
                    <th class="px-4 py-2">Description</th>
                    <th class="px-4 py-2">Price</th>
                    <th class="px-4 py-2">Last updated</th>
                    <th class="px-4 py-2">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (Stock stock : stockList) {
                %>
                <tr>
                    <td class="px-4 py-2"><%=serialNumber%></td>
                    <td class="px-4 py-2"><%=stock.getName()%></td>
                    <td class="px-4 py-2"><%=stock.getIsin()%></td>
                    <td class="px-4 py-2"><%=stock.getDescription()%></td>
                    <td class="px-4 py-2">$<%=stock.getPrice()%></td>
                    <td class="px-4 py-2"><%=stock.getCreationDateTime()%></td>
                    <td class="px-4 py-2">
                        <form action="<%=request.getContextPath()%>/DeleteStockServlet" method="post">
                            <input type="hidden" name="stockId" value="<%=stock.getId()%>">
                            <button type="submit" class="btn btn-danger px-4 py-2 bg-red-500 text-white rounded-md hover:bg-red-600">Delete</button>
                        </form>
                    </td>
                </tr>
                <%
                serialNumber++;
                %>
                <%
                }
                %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <h2 class="text-white-500 text-center py-4">No stocks found</h2>
        <%
        }
        %>
    </div>
</body>
</html>
