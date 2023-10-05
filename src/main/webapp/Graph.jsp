<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Details</title>
<link rel="stylesheet" href="Assets/css/FRSH.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
   </head>
<body>
<style>
#search-results {
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 1000;
	max-height: 200px; /* Set the max height for scrollability */
	overflow-y: auto; /* Enable vertical scrolling */
	border: 1px solid #ccc;
	background-color: #fff;
	width: 240px;
	margin-top: 5px;
	border-radius: 5px;
	border: 1px solid gray;
	/* Initially hide the results div */
}

/* Style for WebKit-based browsers (Chrome, Safari) */
#search-results::-webkit-scrollbar {
	width: 12px;
}

#search-results::-webkit-scrollbar-thumb {
	border-radius: 0.5rem;
	background-color: #0004;
}

/* Style for Firefox and other browsers that support scrollbar-width and scrollbar-color */
#search-results {
	scrollbar-width: thin;
	scrollbar-color: #0004 transparent;
}

.search_result {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	align-items: center;
}

.search_result img {
	width: 40px;
	margin-right: 10px;
	border-radius: 75%;
}

.search-result-item {
	padding: 5px;
	cursor: pointer;
}

.search-result-item:hover {
	background-color: #f2f2f2;
}
</style>
		</head>
		<body>

			<!-- Add the following JavaScript to show/hide search results -->
			<script>
			function showSearchResults(query) {
			    const searchResultsDiv = document.getElementById("search-results");
			    searchResultsDiv.innerHTML = ""; // Clear previous results

			    if (query.trim() === "") {
			        searchResultsDiv.style.display = "none"; // Hide the results if the query is empty
			        return;
			    }

			    // You can fetch and populate search results here (replace this with your actual data fetching logic)
			    // For demonstration, let's use the provided JSON data
			     const searchResults = [
			    	{
			    	    company_name: "Apple",
			    	    company_image: "/Assets/images/AAPL@2x.jpg",
			    	    nick_name: "AMZN"
			    	},

			    	{
			    	    company_name: "Adobe",
			    	    company_image: "/Assets/images/ADBE@2x.jpg",
			    	    nick_name: "ADBE"
			    	},

			    	{
			    	    company_name: "Amazon",
			    	    company_image: "/Assets/images/AMZN@2x.jpg",
			    	    nick_name: "AMZN"
			    	},

			    	{
			    	    company_name: "Google",
			    	    company_image: "/Assets/images/GOOGL@2x.jpg",
			    	    nick_name: "GOOGL"
			    	},

			    	{
			    	    company_name: "Freshworks",
			    	    company_image: "/Assets/images/FRSH@2x.jpg",
			    	    nick_name: "FRSH"
			    	},

			    	{
			    	    company_name: "Microsoft",
			    	    company_image: "/Assets/images/MSFT@2x.jpg",
			    	    nick_name: "MSFT"
			    	},

			    	{
			    	    company_name: "Qualcom",
			    	    company_image: "/Assets/images/QQQ@2x.jpg",
			    	    nick_name: "QCOM"
			    	},

			    	{
			    	    company_name: "Tesla",
			    	    company_image: "/Assets/images/TSLA@2x.jpg",
			    	    nick_name: "TSLA"
			    	},

			    	{
			    	    company_name: "Texas",
			    	    company_image: "/Assets/images/TXN@2x.jpg",
			    	    nick_name: "TXN"
			    	},
			    	{
			    	    company_name: "Shopify",
			    	    company_image: "/Assets/images/SHOP@2x.jpg",
			    	    nick_name: "SHOP"
			    	},
			    	{
			    	    company_name: "Nvidia",
			    	    company_image: "/Assets/images/NVDA@2x.jpg",
			    	    nick_name: "NVDA"
			    	},
			    	{
			    	    company_name: "Facebook",
			    	    company_image: "/Assets/images/FB@2x.jpg",
			    	    nick_name: "META"
			    	},
			    	{
			    	    company_name: "Oracle",
			    	    company_image: "/Assets/images/ORCL@2x.webp",
			    	    nick_name: "ORCL"
			    	},
			    	{
			    	    company_name: "Cisco Systems",
			    	    company_image: "/Assets/images/CSCO@2x.png",
			    	    nick_name: "CSCO"
			    	},
			    	{
			    	    company_name: "Salesforce Inc",
			    	    company_image: "/Assets/images/CRM@2x.png",
			    	    nick_name: "CRM"
			    	},
			    	{
			    	    company_name: "Motorola Solutions",
			    	    company_image: "/Assets/images/MSI@2x.webp",
			    	    nick_name: "MSI"
			    	},
			    	{
			    	    company_name: "IBM Corp.",
			    	    company_image: "/Assets/images/IBM@2x.png",
			    	    nick_name: "IBM"
			    	},
			    	{
			    	    company_name: "Flextronics",
			    	    company_image: "/Assets/images/FLEX@2x.png",
			    	    nick_name: "FLEX"
			    	},
			    	{
			    	    company_name: "Netflix Inc.",
			    	    company_image: "/Assets/images/NFLX@2x.webp",
			    	    nick_name: "NFLX"
			    	},
			    	{
			    	    company_name: "Intel Corporation",
			    	    company_image: "/Assets/images/INTC@2x.png",
			    	    nick_name: "INTC"
			    	},
			    	{
			    	    company_name: "Dell Technologies Inc.",
			    	    company_image: "/Assets/images/DELL@2x.png",
			    	    nick_name: "DELL"
			    	},
			    	{
			    	    company_name: "The Walt Disney Company",
			    	    company_image: "/Assets/images/DIS@2x.png",
			    	    nick_name: "DIS"
			    	},
			    	{
			    	    company_name: "Starbucks Corporation",
			    	    company_image: "/Assets/images/SBUX@2x.png",
			    	    nick_name: "SBUX"
			    	},
			    	{
			    	    company_name: "Walmart Inc.",
			    	    company_image: "/Assets/images/WMT@2x.png",
			    	    nick_name: "WMT"
			    	},
			    	{
			    	    company_name: "Uber Technologies Inc.",
			    	    company_image: "/Assets/images/UBER@2x.png",
			    	    nick_name: "UBER"
			    	},
			    	{
			    	    company_name: "Ford Motor Co.",
			    	    company_image: "/Assets/images/F@2x.png",
			    	    nick_name: "F"
			    	},
			    	{
			    	    company_name: "American Express Co.",
			    	    company_image: "/Assets/images/AXP@2x.png",
			    	    nick_name: "AXP"
			    	},
			    	{
			    	    company_name: "Visa, Inc.",
			    	    company_image: "/Assets/images/V@2x.png",
			    	    nick_name: "V"
			    	},
			    	{
			    	    company_name: "Unity Software",
			    	    company_image: "/Assets/images/U@2x.png",
			    	    nick_name: "U"
			    	},
			    	{
			    	    company_name: "Zoom Video Communications Inc",
			    	    company_image: "/Assets/images/ZM@2x.png",
			    	    nick_name: "ZM"
			    	},
			    	{
			    	    company_name: "Airbnb",
			    	    company_image: "/Assets/images/ABNB@2x.avif",
			    	    nick_name: "ABNB"
			    	},
			    	{
			    	    company_name: "Atlassian Corporation Plc",
			    	    company_image: "/Assets/images/TEAM@2x.webp",
			    	    nick_name: "TEAM"
			    	},
			    	{
			    	    company_name: "Domino's Pizza, Inc.",
			    	    company_image: "/Assets/images/DPZ@2x.png",
			    	    nick_name: "DPZ"
			    	},
			    	{
			    	    company_name: "Pepsico, Inc.",
			    	    company_image: "/Assets/images/PEP@2x.webp",
			    	    nick_name: "PEP"
			    	},
			    ];

			    // Filter results based on the query
			    const filteredResults = searchResults.filter(result => {
			        return (
			            result.company_name.toLowerCase().includes(query.toLowerCase()) ||
			            result.nick_name.toLowerCase().includes(query.toLowerCase())
			        );
			    });

			    // If there are no matching results, display "No match found"
			    if (filteredResults.length === 0) {
			        const noMatchItem = document.createElement("div");
			        noMatchItem.textContent = "No match found";
			        searchResultsDiv.appendChild(noMatchItem);
			    } else {
			        // Iterate through filtered search results and add them to the div
			        filteredResults.forEach(result => {
			            const resultItem = document.createElement("a");
			            resultItem.href = "<%=request.getContextPath()%>/Graph.jsp?name=" + result.company_name; // Replace with the actual URL for the search result
			            resultItem.className = "search_result";

			            const img = document.createElement("img");
			            img.src = "<%=request.getContextPath()%>" + result.company_image;
			            img.alt = result.company_name;

			            const p = document.createElement("p");
			            p.textContent = result.company_name;

			            resultItem.appendChild(img);
			            resultItem.appendChild(p);

			            searchResultsDiv.appendChild(resultItem);
			        });
			    }

			    searchResultsDiv.style.display = "block"; // Show the results div
			}


    </script>

<header>
        <div id="header">
            <a href="index.jsp">
<img src="Assets/images/InvestX New.png" alt="Logo Comes here" height="45px">
</a>
            <nav>
                <a href="Explore.jsp">Explore</a>
                <a href="#">Features</a>
                <a href="#">Customer Service</a>
            </nav>
        </div>
		
		<div id="search">
				<input type="search" id="sk" placeholder="Search Stocks, MF, etc.."
					oninput="showSearchResults(this.value)"> <i
					class="fas fa-search"></i>
				<div id="search-results" class="search_bar_div"></div>
				<!-- This is the scrollable search results div -->
			</div>
        <!--  <div id="search">
            <i class="fas fa-search"></i>
            <input type="search" id="sk" placeholder=" Search Stocks, MF, etc..">
            <!-- <a id="login" href="/Pages/indexx.html">login</a> -->
        </div>-->

    </header>
    <!-- Navigation -->
    <div id="navi">
        <a href="#Overview">Overview</a>
        <a href="#Performance">Performance</a>
        <a href="#Company">Company Information</a>
    </div>
    <!-- FRSH GRAPH -->
    <div id="Overview">
        <div id="frshlogo">
            <br>
            <a>
<img id="comp_img" alt="Company Logo">
</a>
            <h2 id="company_name"></h2>
        </div>
        <div id="price">
            <h1 id="Compan"></h1>
            <h5 id="stock_price">
<span></span>
</h5>
            <p>
Market is closed - opens on 7PM<span id="live_time" class="Live"></span>
</p>
        </div>
    </div>

    <!-- Buy Shares -->
    <div id="Shares">
        <!-- <img id="graph" alt="FRSH Graph"> -->
        <canvas id="myChart" style="width:1200px;max-width:750px;height:500px"></canvas>

        <div id="Fractional">
            <h3>
Great News! Now you can buy<br>
 fractional shares of <span id="company_nameee"></span>
</h3>
            <h4>What is Fractional Shares?</h4>
            <p>
Fractional shares are pieces of one full share of<br> a company or exchange-traded fund (ETF).
</p>
            <p>
In InvestX, you can buy <span id="company_nameeee"></span>
 stock in <br> any dollar amount, or any other
                stock you want.</p>
            <br>

            <form id="buy_stocks" >
                <input type="number" id="Value" placeholder="Enter quantity " required class="qty_input" min=1 max=1000>
 <br>
            <br>
            <button id="btn" type="submit">Buy Shares</button>

            </form>
        </div>
    </div>
    <!-- Company Performance -->
    <div id="Performance">
        <img id="perform" alt="Stock Performance">

    </div>
    <!-- Company Information -->
    <div id="Company">
        <h2>Company Information</h2>
        <p id="company_info">Freshworks is a cloud-based software solutions company for many businesses. Freshworks does
            the various<br>
            tasks of businesses and organizations for their employees and customers. The primary task of this
            company<br>
            is to provide software as a service (SaaS) at an affordable price, quick implementation, and it is designed
            for<br>
            the users. The company builds various products like Freshdesk, fresh service, fresh sales, fresh team,<br>
            Freshdesk messaging, refreshing, etc., to make the tasks easier for IT, sales, marketers, customer service,
            and<br>
            HR to perform their job well and satisfy their customers. The company was incorporated in 2010 by Girish<br>
            Mathrubootham and Shan Krishnaswamy. Earlier, the company name was Freshdesk. Inc. They collectively<br>
            begin work on creating a user-focused cloud-based customer service software. In 2014, the company<br>
            launched its second product Freshservice. The company keeps launching new features in their existing<br>
            product till 2015. In the year 2016, it launched its third product called fresh sales. Freshsales is a sales
            CRM<br>
            to help consumers in juggling between some tools. In 2017, the company incorporated its name from<br>
            Freshdesk Inc. to Freshworks inc. In 2019, the Freshworks company entered the three Gartner magic<br>
            quadrant reports in the customer engagement software. The company also featured on the FORBES at 40,<br>
            the number from the list of 100 companies for the third consecutive year. In 2020, the pandemic year of<br>
            covid-19, the company rated at 25 levels from private cloud companies to work during the pandemic. In
            the<br>
            year current assessment, Freshworks goes Initial public offering and also traded on the Nasdaq global
            select<br>
            market. There are many boards of directors who are currently working for the company—Roxanne Austin,<br>
            Johanna Flower, Sameer Gandhi, Randy Gottfried, Girish Mathrubootham, and many more. Currently<br>
            Freshworks Inc has a market cap of $2.4 Billion. It has a P.E ratio of 0.0. The shares of Freshworks Inc are
            <br>
            trading at $14.72. .
        </p>

        <div id="Org">
            <p>Organization</p>
            <p id="organization">Freshworks</p>
        </div>
        <div id="Emp">
            <p>Employees</p>
            <p id="employees">4600</p>
        </div>
        <div id="CEO">
            <p>CEO</p>
            <p id="ceo">Mr. Rathna Girish Mathrubootham</p>
        </div>
        <div id="Industry">
            <p>Industry</p>
            <p id="industry">Consumer Services</p>
        </div>
    </div>
    <!-- Buy Sell Hold -->
    <div id="Buy">
        <h1>Analyst Recommendation</h1>
        <p>based on 13 analysts ratings</p>
        <div id="colors">
            <p>Buy</p>
            <div class="container">
                <div class="skills buy">61%</div>
            </div>

            <p>Hold</p>
            <div class="container">
                <div class="skills hold">38%</div>
            </div>

            <p>Sell</p>
            <div class="container">
                <div class="skills sell">5%</div>
            </div>
        </div>
        <br>

        <p>
Based on 13 Wall street analysts offering stock ratings for<br>
 <span id="company_namee"></span> (by analysts
            ranked 0 to 5 stars)
        </p>
    </div>

    <pre>

                </pre>
    <!-- Footer -->
    <footer>
        <div id="left">
            <img src="Assets/images/InvestX New.png" alt="Logo" height="50px" width="160px">
 <br>
            <img src="Assets/images/old-app-store.svg" alt="apple store" height="80px" width="100px">
            <img src="Assets/images/old-play-store.svg" alt="play store" height="80px" width="100px">
 <br>
            <img src="Assets/images/facebook.svg" alt="Facebook icon" height="20px" width="20px">
            <img src="Assets/images/instagram.svg" alt="instagram icon" height="20px" width="20px">
            <img src="Assets/images/linkedin.svg" alt="linkedin icon" height="20px" width="20px">
            <img src="Assets/images/twitter.svg" alt="twitter icon" height="20px" width="20px">
            <img src="Assets/images/youtube.svg" alt="youtube icon" height="20px" width="20px">
        </div>
        <!-- <div id="Right"> -->
        <div id="Explore">
            <h2>Explore Products</h2>
            <h4>Fixed Deposits</h4>
            <h4>Mutual Funds</h4>
            <h4>IN Stocks</h4>
            <h4>US Stocks</h4>
        </div>
        <div id="dis">
            <h2>Disclaimer:</h2>
            <h4>
Investment in securities market are subject to market risks,<br> read all the related documents
                carefully before investing</h4>
        </div>
        <!-- </div> -->
        <p>All Rights Reserved | © Copyright 2023</p>
    </footer>
    
     <script type="text/javascript"
			src="<%=request.getContextPath()%>/Assets/js/graph.js"></script>
        
    </body>
</html>