<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Form</title>

    <!-- Link to Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-white text-black">

    <!-- Header Section -->
    <header class="bg-black text-white py-5 text-center">
        <h1 class="text-2xl font-bold">Stock Management System</h1>
    </header>

    <%
    // Retrieve success and error messages from request attributes.
    String success = (String) request.getAttribute("successMsg");
    String error = (String) request.getAttribute("errorMsg");

    if (error != null && !(error.isEmpty())) {
    %>

    <!-- Display error message if available. -->
    <h3 class="text-center text-red-500 mt-2"><%=error%></h3>

    <%
    }
    if (success != null && !(success.isEmpty()) && error == null) {
    %>

    <!-- Display success message if available and there's no error. -->
    <h3 class="text-center text-green-500 mt-2"><%=success%></h3>

    <%
    }
    %>

    <!-- Main Content Section -->
    <div class="container mx-auto mt-5 p-5 bg-white border rounded-lg shadow-lg">
        <h2 class="text-center text-2xl font-bold">Add Stock</h2>

        <!-- Anchor link to read all stock page -->
        <div class="mt-3 text-center">
            <a href="<%=request.getContextPath()%>/ReadAllStocks"
                class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full">Read All Stocks</a>
        </div>

        <form action="<%=request.getContextPath()%>/stock-form" method="post" class="mt-5">
            <div class="mb-3">
                <label for="name" class="block text-sm font-semibold text-gray-600">Name</label>
                <input type="text" class="w-full py-2 px-3 border rounded-lg" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="isin" class="block text-sm font-semibold text-gray-600">ISIN</label>
                <input type="text" class="w-full py-2 px-3 border rounded-lg" id="isin" name="isin" required>
            </div>
            <div class="mb-3">
                <label for="description" class="block text-sm font-semibold text-gray-600">Description</label>
                <textarea class="w-full py-2 px-3 border rounded-lg" id="description" name="description" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="price" class="block text-sm font-semibold text-gray-600">Price</label>
                <input type="number" step="0.01" class="w-full py-2 px-3 border rounded-lg" id="price" name="price" required>
            </div>
            <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full">Submit</button>
        </form>
    </div>
</body>
</html>
