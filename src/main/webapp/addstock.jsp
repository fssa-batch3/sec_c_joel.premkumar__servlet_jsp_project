<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Form</title>

    <!-- Link to Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Your custom CSS styles -->
    <style>
        body {
            background-color: #fff; /* White background */
            color: #000; /* Black text color */
        }

        .custom-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #000; /* Black border */
            border-radius: 5px;
            background-color: #fff;
        }

        .custom-form h2 {
            color: #000; /* Black text color */
        }

        .custom-form label {
            color: #000; /* Black text color */
        }

        .custom-form .btn-primary {
            background-color: #000; /* Black button background */
            border-color: #000; /* Black button border */
            color: #fff; /* White button text color */
        }

        .custom-form .btn-primary:hover {
            background-color: #333; /* Darker gray on hover */
            border-color: #333; /* Darker gray border on hover */
        }

        /* Header Section */
        .header {
            background-color: #000; /* Black header background */
            color: #fff; /* White text color */
            padding: 20px 0;
            text-align: center;
        }

        .header h1 {
            color: #fff; /* White text color */
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header class="header">
        <h1>Stock Management System</h1>
    </header>

    <%
    // Retrieve success and error messages from request attributes.
    String success = (String) request.getAttribute("successMsg");
    String error = (String) request.getAttribute("errorMsg");

    if (error != null && !(error.isEmpty())) {
    %>
    
    <!-- Display error message if available. -->
    <h3 class="text-center text-danger mt-2"><%=error%></h3>
    
    <%
    }
    if (success != null && !(success.isEmpty()) && error == null) {
    %>
    
    <!-- Display success message if available and there's no error. -->
    <h3 class="text-center text-success mt-2"><%=success%></h3>
    
    <%
    }
    %>

    <!-- Main Content Section -->
    <div class="container mt-5 custom-form">
        <h2 class="text-center">Add Stock</h2>

        <!-- Anchor link to read all stock page -->
        <div class="mt-3 text-center">
            <a href="<%=request.getContextPath()%>/ReadAllStocks"
                class="btn btn-primary">Read All Stocks</a>
        </div>

        <form action="<%=request.getContextPath()%>/stock-form" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="isin" class="form-label">ISIN</label>
                <input type="text" class="form-control" id="isin" name="isin" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" step="0.01" class="form-control" id="price" name="price" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Link to Bootstrap JavaScript -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
