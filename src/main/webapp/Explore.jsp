<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Explore US Stocks</title>
<link rel="stylesheet" href="Assets/css/explore.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<header>
		<div id="header">
			<a href="index.jsp"> <img src="Assets/images/InvestX New.png"
				alt="Logo Comes here" height="45px">
			</a>
			<nav>
				<b><a href="#">US Stocks</a>
				<a href="index.jsp">Back to Home</a>
				 </b>
				<!--<ahref="#">Customer Service</a>-->
			</nav>
		</div>

		<!--<div id="search">

			<input type="search" id="sk" placeholder=" Search Stocks, MF, etc..">
			<i class="fas fa-search"></i> <a id="login" href="#"></a>
		</div>-->
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
			<!-- Your existing code here -->

			<div id="search">
				<input type="search" id="sk" placeholder="Search Stocks, MF, etc.."
					oninput="showSearchResults(this.value)"> <i
					class="fas fa-search"></i>
				<div id="search-results" class="search_bar_div"></div>
				<!-- This is the scrollable search results div -->
			</div>

			<!-- Your remaining code here -->

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

	</header>

	<!-- What if you've Invested -->
	<div id="what">
		<br>
		<h1>What if you had invested</h1>
		<h2>
			&#x20B9;
			<output id="amount" name="amount" for="invested">1000</output>
			in <span id="company_name">Apple </span> Inc*
		</h2>
		<input type="range" id="SIP" name="invested" min="1000" max="50000"
			value="1000" step="1000" class="range"> <br> <br>
		<div class="image">
			<img src="Assets/images/AAPL@2x.jpg" class="row_images selected"
				id="Apple" alt="apple icon"> 
				<img
				src="Assets/images/ADBE@2x.jpg" class="row_images" id="Adobe"
				alt="apple icon"> <img src="Assets/images/AMZN@2x.jpg"
				class="row_images" id="Amazon" alt="apple icon"> <img
				src="Assets/images/GOOGL@2x.jpg" class="row_images" id="Google"
				alt="apple icon"> <img src="Assets/images/FRSH@2x.jpg"
				class="row_images" id="Freshworks" id="frsh" alt="apple icon">
			<img src="Assets/images/MSFT@2x.jpg" class="row_images"
				id="Microsoft" alt="apple icon"> <img
				src="Assets/images/Qualcom Logo.avif" class="row_images"
				id="Qualcom" alt="apple icon"> <img
				src="Assets/images/TSLA@2x.jpg" class="row_images" id="Tesla"
				alt="apple icon"> <img src="Assets/images/TXN@2x.jpg"
				class="row_images" id="Texas" alt="apple icon"> <img
				src="Assets/images/SHOP@2x.jpg" class="row_images" id="Shopify"
				alt="apple icon">
		</div>
		<br> <br>
		<div id="year_slider" class="radio_btns">
			<div class="radio_div active">
				<input class="year" type="radio" name="years" id="3" value="3"
					checked> <label for="3">3Y</label>
			</div>
			<div class="radio_div">
				<input class="year" type="radio" name="years" id="5" value="5">
				<label for="5">5Y</label>
			</div>
			<div class="radio_div">
				<input class="year" type="radio" name="years" id="10" value="10">
				<label for="10">10Y</label>
			</div>

			<!-- <radio id="three">3</radio>
            <radio id="five">5</radio>
            <radio id="ten">10</radio> -->
		</div>
		<br>
		<h3>You would have</h3>
		<h2 id="display_amt">&#x20B9; 3000</h2>
		<span class="number_of_years">(in 3 yrs)</span> <br>
		<button id="now">Invest Now</button>
		<p>*Disclaimer: Returns shown above are on the basis of back
			tested data</p>
	</div>

	<br>
	<!-- Explore by Collection -->
	<main>
		<div id="Color">
			<h1>Explore Collection</h1>
			<br>
			<div id="Content">
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/top_20_tech.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Top 20 Tech Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/top-brands2x.png"
							alt="Explore Collections Pics" height="70px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>
							Top Profits<br> Stocks
						</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/high_returns.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Growth Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/risk-profile2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest by</p>
						<h3>
							Your Risk<br> Profile
						</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/celeb.png" alt="Explore Collections Pics"
							height="70px">
					</div>
					<div id="Invest">
						<p>Invest Like</p>
						<h3>Celebrity Investors</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/us-basket2x.png"
							alt="Explore Collections Pics" height="72px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>United States Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/high-profit-2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Profit Companies</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/top-sips2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>
							Popular SIP's <br>Stocks
						</h3>
					</div>
				</div>
			</div>
		</div>
	</main>
	<br>
	<!-- Explore by Themes -->
	<main>
		<div id="Color">
			<h1>Explore by Themes</h1>
			<br>
			<div id="Content">
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/ecommerce.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>E-Commerce Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/social-media.png"
							alt="Explore Collections Pics" height="70px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Social Media Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/e-mobility2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Electric Mobility Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/sports2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Popular Sports Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/metaverse2x.png"
							alt="Explore Collections Pics" height="72px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>
							Metaverse<br> Stocks
						</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/travel2x.png"
							alt="Explore Collections Pics" height="72px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Travel & Leisure Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/health-care2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Hospitals & Healthcare Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/ai-2x.png" alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Top Bluechip Stocks</h3>
					</div>
				</div>
			</div>
		</div>

	</main>
	<!-- Explore by categories -->
	<main>

		<div id="Color">
			<h1>Invest by Categories</h1>
			<br>
			<div id="Content">
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/profitable-mega-cap2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Profitable Large cap Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/undervalued-tech2x.png"
							alt="Explore Collections Pics" height="70px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Emerging Startups Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/high-dividend2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Dividend Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/analyst-picks.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Data analyst-picks Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/revenue-rich2x.png"
							alt="Explore Collections Pics" height="72px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Debt Funds Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/low2x.png" alt="Explore Collections Pics"
							height="72px">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>Small Cap Companies</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/high_returns.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Growth Stocks</h3>
					</div>
				</div>
				<div id="Explore">
					<div id="collection">
						<img src="Assets/images/high-profit-2x.png"
							alt="Explore Collections Pics">
					</div>
					<div id="Invest">
						<p>Invest in</p>
						<h3>High Profit Companies</h3>
					</div>
				</div>
			</div>
		</div>
		<br>
		<pre>

            <a href="Assets/images/FRSH@2x.jpg"></a>

    </pre>
		<!-- Footer -->
		<footer>
			<div id="left">
				<img src="Assets/images/InvestX New.png" alt="Logo" height="50px"
					width="160px"> <br> <img
					src="Assets/images/old-app-store.svg" alt="apple store"
					height="80px" width="100px"> <img
					src="Assets/images/old-play-store.svg" alt="play store"
					height="80px" width="100px"> <br> <img
					src="Assets/images/facebook.svg" alt="Facebook icon" height="20px"
					width="20px"> <img src="Assets/images/instagram.svg"
					alt="instagram icon" height="20px" width="20px"> <img
					src="Assets/images/linkedin.svg" alt="linkedin icon" height="20px"
					width="20px"> <img src="Assets/images/twitter.svg"
					alt="twitter icon" height="20px" width="20px"> <img
					src="Assets/images/youtube.svg" alt="youtube icon" height="20px"
					width="20px">
			</div>
			<!-- <div id="Right"> -->
			<div id="Products">
				<h2>Explore Products</h2>
				<h4>Fixed Deposits</h4>
				<h4>Mutual Funds</h4>
				<h4>IN Stocks</h4>
				<h4>US Stocks</h4>
			</div>
			<div id="dis">
				<h2>Disclaimer:</h2>
				<h4>
					Investment in securities market are subject to market risks,<br>
					read all the related documents carefully before investing
				</h4>
			</div>
			<!-- </div> -->
			<p>All Rights Reserved | © Copyright 2022</p>
		</footer>

		<script type="text/javascript"
			src="<%=request.getContextPath()%>/Assets/js/explore.js"></script>
</body>
</html>