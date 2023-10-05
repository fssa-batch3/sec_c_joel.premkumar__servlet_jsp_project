<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<title>Order History</title>
	<link rel="stylesheet" type="text/css" href="Assets/css/Order.css">
</head>

<body>
	<!-- Header -->
	<header>
		<div id="header">
            <a href="Explore.jsp">
<img src="Assets/images/InvestX New.png" alt="Logo Comes here" height="45px">
</a>
            <nav>
                <a href="Explore.jsp">US STOCKS</a>
                <a href="#">FD</a>
                <a href="#">Customer Service</a>
            </nav>
        </div>

        <div id="search">

            <input type="search" id="sk" placeholder=" Search Stocks, MF, etc..">
            <i class="fas fa-search"></i>
            <a id="login" href="#"></a>
        </div>
	</header>
	<main id="joel">
		<div id="history">Order History</div>
		<table>
			<thead>
				<tr>
					<th>Stock</th>
					<th>INR</th>
					<th>USD</th>
					<!-- <th>Buy/Sell</th> -->
					<th>Company</th>
					<th>Quantity</th>
					<th>Order Date & Time</th>
				</tr>
			</thead>
			<tbody id="table_body">
			
			
				 <c:forEach var="record" items="${list}">
            <tr>
                <td> <img  id ="Company_logo"src =""></td>
                <td>${record.inr}</td>
                <td>${record.usd}</td>
                <td id= "company_name">${record.stockName}</td>
               
                <td>${record.quantity}</td>
                <td>${record.purchasedDate}</td>
            </tr>
        </c:forEach>
				<!-- 
				<tr>
					<td>April 28, 2023</td>
					<td>654321</td>
					<td>Microsoft Corporation</td>
					<td>Sell</td>
					<td>$250.00</td>
					<td>50</td>
				</tr>
				<tr>
					<td>April 15, 2023</td>
					<td>789456</td>
					<td>Amazon.com, Inc.</td>
					<td>Buy</td>
					<td>$3,200.00</td>
					<td>10</td>
				</tr> -->
			</tbody>
		</table>
	</main>
	<footer>
		<p>&copy; 2023 InvestX</p>
	</footer>
<script>


const company1 = [
	{
	    company_name: "Apple",
	    company_image: "Assets/images/AAPL@2x.jpg",
	    nick_name: "AMZN"
	},

	{
	    company_name: "Adobe",
	    company_image: "Assets/images/ADBE@2x.jpg",
	    nick_name: "ADBE"
	},

	{
	    company_name: "Amazon",
	    company_image: "Assets/images/AMZN@2x.jpg",
	    nick_name: "AMZN"
	},

	{
	    company_name: "Google",
	    company_image: "Assets/images/GOOGL@2x.jpg",
	    nick_name: "GOOGL"
	},

	{
	    company_name: "Freshworks",
	    company_image: "Assets/images/FRSH@2x.jpg",
	    nick_name: "FRSH"
	},

	{
	    company_name: "Microsoft",
	    company_image: "Assets/images/MSFT@2x.jpg",
	    nick_name: "MSFT"
	},

	{
	    company_name: "Qualcom",
	    company_image: "Assets/images/QQQ@2x.jpg",
	    nick_name: "QCOM"
	},

	{
	    company_name: "Tesla",
	    company_image: "Assets/images/TSLA@2x.jpg",
	    nick_name: "TSLA"
	},

	{
	    company_name: "Texas",
	    company_image: "Assets/images/TXN@2x.jpg",
	    nick_name: "TXN"
	},
	{
	    company_name: "Shopify",
	    company_image: "Assets/images/SHOP@2x.jpg",
	    nick_name: "SHOP"
	},
	{
	    company_name: "Nvidia",
	    company_image: "Assets/images/NVDA@2x.jpg",
	    nick_name: "NVDA"
	},
	{
	    company_name: "Facebook",
	    company_image: "Assets/images/FB@2x.jpg",
	    nick_name: "META"
	},
	{
	    company_name: "Oracle",
	    company_image: "Assets/images/ORCL@2x.webp",
	    nick_name: "ORCL"
	},
	{
	    company_name: "Cisco Systems",
	    company_image: "Assets/images/CSCO@2x.png",
	    nick_name: "CSCO"
	},
	{
	    company_name: "Salesforce Inc",
	    company_image: "Assets/images/CRM@2x.png",
	    nick_name: "CRM"
	},
	{
	    company_name: "Motorola Solutions",
	    company_image: "Assets/images/MSI@2x.webp",
	    nick_name: "MSI"
	},
	{
	    company_name: "IBM Corp.",
	    company_image: "Assets/images/IBM@2x.png",
	    nick_name: "IBM"
	},
	{
	    company_name: "Flextronics",
	    company_image: "Assets/images/FLEX@2x.png",
	    nick_name: "FLEX"
	},
	{
	    company_name: "Netflix Inc.",
	    company_image: "Assets/images/NFLX@2x.png",
	    nick_name: "NFLX"
	},
	{
	    company_name: "Intel Corporation",
	    company_image: "Assets/images/INTC@2x.png",
	    nick_name: "INTC"
	},
	{
	    company_name: "Dell Technologies Inc.",
	    company_image: "Assets/images/DELL@2x.png",
	    nick_name: "DELL"
	},
	{
	    company_name: "The Walt Disney Company",
	    company_image: "Assets/images/DIS@2x.png",
	    nick_name: "DIS"
	},
	{
	    company_name: "Starbucks Corporation",
	    company_image: "Assets/images/SBUX@2x.png",
	    nick_name: "SBUX"
	},
	{
	    company_name: "Walmart Inc.",
	    company_image: "Assets/images/WMT@2x.png",
	    nick_name: "WMT"
	},
	{
	    company_name: "Uber Technologies Inc.",
	    company_image: "Assets/images/UBER@2x.png",
	    nick_name: "UBER"
	},
	{
	    company_name: "Ford Motor Co.",
	    company_image: "Assets/images/F@2x.png",
	    nick_name: "F"
	},
	{
	    company_name: "American Express Co.",
	    company_image: "Assets/images/AXP@2x.png",
	    nick_name: "AXP"
	},
	{
	    company_name: "Visa, Inc.",
	    company_image: "Assets/images/V@2x.png",
	    nick_name: "V"
	},
	{
	    company_name: "Unity Software",
	    company_image: "Assets/images/U@2x.png",
	    nick_name: "U"
	},
	{
	    company_name: "Zoom Video Communications Inc",
	    company_image: "Assets/images/ZM@2x.png",
	    nick_name: "ZM"
	},
	{
	    company_name: "Airbnb",
	    company_image: "Assets/images/ABNB@2x.png",
	    nick_name: "ABNB"
	},
	{
	    company_name: "Atlassian Corporation Plc",
	    company_image: "Assets/images/TEAM@2x.webp",
	    nick_name: "TEAM"
	},
	{
	    company_name: "Domino's Pizza, Inc.",
	    company_image: "Assets/images/DPZ@2x.png",
	    nick_name: "DPZ"
	},
	{
	    company_name: "Pepsico, Inc.",
	    company_image: "Assets/images/PEP@2x.webp",
	    nick_name: "PEP"
	},
];

setTimeout(function () {

	let imgElements = document.querySelectorAll("#Company_logo"); // Use a class instead of ID for multiple elements.
	let nameElements = document.querySelectorAll("#company_name"); // Use a class instead of ID for multiple elements.

	for (let i = 0; i < imgElements.length; i++) {
	    let logo = imgElements[i];
	    let company = nameElements[i].textContent; // Get the text content of the company_name element.

	    for (let j = 0; j < company1.length; j++) {
	        if (company1[j].company_name === company) {
	            logo.src = company1[j].company_image;
	        }
	    }
	}
}, 1000); 




</script>
		
</body></html>