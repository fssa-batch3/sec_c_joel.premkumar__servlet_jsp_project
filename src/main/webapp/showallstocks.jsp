<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.stockmanagementapp.model.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Stocks Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #000; /* Black background */
	color: #fff; /* White text color */
	font-family: 'Roboto', sans-serif;
}

.container {
	background-color: #fff; /* White */
	border-radius: 10px; /* Increased border radius */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Enhanced box shadow */
	padding: 20px;
	margin-top: 30px;
}

h3 {
	color: #333; /* Dark gray text color for headings */
}

.table {
	background-color: #fff; /* White */
	margin-top: 20px;
}

.thead-dark th {
	background-color: #000; /* Black header background */
	color: #fff; /* White text color */
}

.btn-danger {
	background-color: #FF3333; /* Dark Red */
	border-color: #FF0000; /* Red */
}

.btn-danger:hover {
	background-color: #FF0000; /* Red on hover */
	border-color: #CC0000; /* Dark Red on hover */
}

.form-control {
	background-color: #fff; /* White */
	color: #000; /* Black text color */
}

.header {
	background-color: #333; /* Dark Gray */
	color: #fff; /* White text color */
	padding: 20px;
	border-radius: 10px 10px 0 0; /* Increased border radius */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Enhanced box shadow */
}

.header h1 {
	margin: 0;
	padding: 0;
	font-size: 36px;
}

.search-bar {
	background-color: #333; /* Dark Gray */
	padding: 10px;
	border-radius: 0 0 10px 10px; /* Increased border radius */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Enhanced box shadow */
}

.search-bar form {
	display: flex;
	align-items: center;
}

.search-bar .form-control {
	background-color: #fff; /* White */
	color: #000; /* Black text color */
	flex-grow: 1;
	border: none;
	border-radius: 5px 0 0 5px;
}

.search-bar .btn-primary {
	background-color: #000; /* Black button background */
	border: none;
	color: #fff; /* White text color */
	border-radius: 0 5px 5px 0;
}

.black {
	color: #000; /* Black text color */
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">
</head>
<body>



	<div class="header">
		<h1 class="text-center">Stock Management</h1>
		<div class="search-bar">
			<form action="<%=request.getContextPath()%>/ReadByNameServlet"
				method="post" class="d-flex">
				<input class="form-control me-2" name="stock_name" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary" type="submit">Search</button>
			</form>
		</div>
	</div>

	<%
	String success = (String) request.getAttribute("successMsg");
	String error = (String) request.getAttribute("errorMsg");

	if (error != null && !(error.isEmpty())) {
	%>

	<h3 class="text-center text-danger mt-2"><%=error%></h3>

	<%
	}
	if (success != null && !(success.isEmpty()) && error == null) {
	%>

	<h3 class="text-center text-success mt-2"><%=success%></h3>

	<%
	}
	%>

	<div class="container">
		<h3 class="mb-4">List Stocks</h3>
		<%
		List<Stock> stockList = (List<Stock>) request.getAttribute("listStocks");
		%>
		<%
		int serialNumber = 1;
		%>

		<%
		if (stockList != null && !stockList.isEmpty() && stockList.get(0).getId() != 0) {
		%>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Serial Number</th>
					<th>Name</th>
					<th>ISIN</th>
					<th>Description</th>
					<th>Price</th>
					<th>Create Date Time</th>
					<th>Expire Date Time</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Stock stock : stockList) {
				%>
				<tr>
					<td><%=serialNumber%></td>
					<td><%=stock.getName()%></td>
					<td><%=stock.getIsin()%></td>
					<td><%=stock.getDescription()%></td>
					<td>$<%=stock.getPrice()%></td>
					<td><%=stock.getCreationDateTime()%></td>
					<td><%=stock.getExpireDateTime()%></td>
					<td>
						<form action="<%=request.getContextPath()%>/DeleteStockServlet"
							method="post">
							<input type="hidden" name="stockId" value="<%=stock.getId()%>">
							<button type="submit" class="btn btn-danger">Delete</button>
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
		<p class="black">No stocks found</p>
		<%
		}
		%>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>