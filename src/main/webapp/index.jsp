<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Assets/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
</head>
<body>
	<header>

		<div id="header" class="Title">
			<img src="Assets/images/InvestX New.png" alt="Logo Comes here"
				height="45px">
			<nav>
				<a href="Explore.jsp">Explore</a> <a href="#">Feature</a> <a
					href="#">Customer Service</a>

			</nav>
		</div>

		<div id="search">

			<input type="search" id="sk" placeholder=" Search Stocks, MF, etc..">
			<i class="fas fa-search"></i>
			<%
			if (email == null) {
			%>
			<a id="login" href="SignupLogin.jsp">Login</a>
			<%
			} else {
			%>
			<a href="Profile.jsp" style="color: white"><%=email%></a>
			<%
			}
			%>
		</div>

	</header>
	<!-- Landing Page Contents -->

	<div id>
		<div id="contentW">
			<div id="Text">
				<p>Invest in US Stocks</p>
				<h1>
					Directly invest in<br>US Stocks with INR<br>
				</h1>
				<br>
				<h4>
					<ul>
						<li>Hassale free investing.</li>
						<li>Zero acc-setup Fee.</li>
						<li>One app for everything.</li>
					</ul>
				</h4>
				<br> <a href="Explore.jsp">
					<button id="btn1">Get started</button>
				</a> <br>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<svg viewBox="0 0 172 172" fill="none"
					xmlns="http://www.w3.org/2000/svg">
                <path
						d="M129 17.738C116.369 9.944 101.856 5.375 86 5.375v12.363h43z"
						fill="#ED4C5C"></path>
                <path
						d="M86 30.1h58.05c-4.569-4.569-9.675-8.869-15.05-12.363H86V30.1z"
						fill="#fff"></path>
                <path
						d="M86 42.462h67.994c-2.957-4.568-6.182-8.6-9.675-12.362H86v12.362z"
						fill="#ED4C5C"></path>
                <path
						d="M86 54.825h74.444c-1.881-4.3-4.031-8.6-6.45-12.362H86v12.362z"
						fill="#fff"></path>
                <path
						d="M86 67.188h78.475c-1.075-4.3-2.419-8.332-4.031-12.363H86v12.362z"
						fill="#ED4C5C"></path>
                <path
						d="M86 79.819h80.356c-.269-4.3-1.075-8.332-1.881-12.363H86V79.82z"
						fill="#fff"></path>
                <path
						d="M166.356 79.819H86v6.18H5.375c0 2.15 0 4.032.269 6.182h160.712c.269-2.15.269-4.031.269-6.181 0-2.15 0-4.3-.269-6.181z"
						fill="#ED4C5C"></path>
                <path
						d="M7.525 104.544h156.95c1.075-4.031 1.612-8.063 1.881-12.363H5.644c.268 4.032 1.075 8.332 1.881 12.363z"
						fill="#fff"></path>
                <path
						d="M11.556 116.906h148.888c1.612-4.031 2.956-8.062 4.031-12.362H7.525c1.075 4.3 2.419 8.331 4.031 12.362z"
						fill="#ED4C5C"></path>
                <path
						d="M18.006 129.269h135.988c2.419-4.031 4.569-8.063 6.45-12.363H11.556c1.882 4.3 4.032 8.332 6.45 12.363z"
						fill="#fff"></path>
                <path
						d="M27.681 141.631H144.32c3.493-3.762 6.987-8.062 9.675-12.362H18.006c2.688 4.569 6.181 8.6 9.675 12.362z"
						fill="#ED4C5C"></path>
                <path
						d="M42.731 153.994h86.538c5.644-3.494 10.481-7.794 15.05-12.363H27.681c4.569 4.838 9.675 8.869 15.05 12.363z"
						fill="#fff"></path>
                <path
						d="M86 166.625c15.856 0 30.637-4.569 43.269-12.631H42.731c12.631 8.062 27.413 12.631 43.269 12.631z"
						fill="#ED4C5C"></path>
                <path
						d="M43 17.738C37.356 21.23 32.25 25.53 27.681 30.1c-3.762 3.762-6.987 8.063-9.675 12.362-2.418 4.032-4.837 8.063-6.45 12.363-1.612 4.031-2.956 8.063-4.031 12.362C6.45 71.22 5.912 75.25 5.644 79.55c-.269 2.15-.269 4.3-.269 6.45H86V5.375c-15.856 0-30.369 4.569-43 12.363z"
						fill="#428BC1"></path>
                <path
						d="M67.188 8.063l1.343 4.03h4.031l-3.224 2.688 1.075 4.031-3.225-2.418-3.226 2.419 1.075-4.032-3.225-2.687h4.032l1.344-4.031zM77.938 24.188l1.343 4.03h4.031l-3.224 2.688 1.075 4.032-3.225-2.42-3.225 2.42 1.075-4.032-3.225-2.687h4.03l1.344-4.032zM56.438 24.188l1.343 4.03h4.032l-3.226 2.688 1.075 4.032-3.224-2.42-3.226 2.42 1.075-4.032-3.224-2.687h4.03l1.344-4.032zM67.188 40.313l1.343 4.03h4.031l-3.224 2.688 1.075 4.032-3.225-2.42-3.226 2.42 1.075-4.032-3.225-2.687h4.032l1.344-4.032zM45.688 40.313l1.343 4.03h4.032l-3.226 2.688 1.075 4.032-3.224-2.42-3.226 2.42 1.075-4.032-3.224-2.687h4.03l1.344-4.032zM24.188 40.313l1.343 4.03h4.032l-3.226 2.688 1.076 4.032-3.226-2.42-3.225 2.42 1.076-4.032-3.226-2.687h4.032l1.343-4.032zM77.938 56.438l1.343 4.03h4.031l-3.224 2.688 1.075 4.032-3.225-2.42-3.225 2.42 1.075-4.032-3.225-2.687h4.03l1.344-4.032zM56.438 56.438l1.343 4.03h4.032l-3.226 2.688 1.075 4.032-3.224-2.42-3.226 2.42 1.075-4.032-3.224-2.687h4.03l1.344-4.032zM34.938 56.438l1.343 4.03h4.032l-3.226 2.688 1.075 4.032-3.224-2.42-3.226 2.42 1.076-4.032-3.225-2.687h4.03l1.344-4.032zM67.188 72.563l1.343 4.03h4.031l-3.224 2.688 1.075 4.031-3.225-2.418-3.226 2.418 1.075-4.03-3.225-2.688h4.032l1.344-4.031zM45.688 72.563l1.343 4.03h4.032l-3.226 2.688 1.075 4.031-3.224-2.418-3.226 2.418 1.075-4.03-3.224-2.688h4.03l1.344-4.031zM24.188 72.563l1.343 4.03h4.032l-3.226 2.688 1.076 4.031-3.226-2.418-3.225 2.418 1.076-4.03-3.226-2.688h4.032l1.343-4.031zM31.712 34.938l3.226-2.42 3.224 2.42-1.343-4.032 3.225-2.687h-4.031l-1.075-4.032-1.344 4.032H29.83l3.225 2.418-1.343 4.3zM10.213 67.188l3.225-2.42 3.225 2.42-1.344-4.032 3.225-2.687H14.78l-1.344-4.032-1.343 4.032H9.406c0 .268-.268.537-.268.806l2.15 1.613-1.075 4.3z"
						fill="#fff"></path>
            </svg>
				<img id="US" src="Assets/images/hero-new.webp" alt="iphone"
					height="500px" width="250px">
			</div>
		</div>

		<div id="contentB">
			<div id="Text">
				<p>#SupersaverMoneyApp</p>
				<h1>
					Invest in Stocks,<br> Mutual Funds, ETFs and FDs
				</h1>
				<br>
				<h3>
					Manage all your money across investments,<br> loans, taxes and
					expenses in one app
				</h3>
				<br> <a href="Explore.jsp">
					<button id="btn1">Get started</button>
				</a> <br>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<img src="Assets/images/hero-section-new.webp" alt="iphone"
					height="500px" width="250px">
			</div>
		</div>

		<div id="contentW">
			<div id="Text">
				<p>Plan your financial life</p>
				<h1>
					Plan goals and grow your<br> future net worth
				</h1>
				<br>
				<h3>
					See how soon you can retire and plan your<br> financial goals
				</h3>
				<br> <a href="Explore.jsp">
					<button id="btn2">Get started</button>
				</a> <br>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<img src="Assets/images/goals.webp" alt="iphone" height="500px"
					width="250px">
			</div>
		</div>

		<div id="contentB">
			<div id="Text">
				<p>Introducing</p>
				<h1>Mini Save</h1>
				<br>
				<h4>
					<ul>
						<li>Auto track all your expenses<br>throughout the day
						</li>
						<li>Automatically round up your spare<br>change to
							nearest ₹10
						</li>
						<li>Invest your Mini Save Pots in<br>US Stocks
						</li>
					</ul>
				</h4>
				<br> <a href="Explore.jsp">
					<button id="btn2">Get started</button>
				</a> <br>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<img src="Assets/images/minisave-new.webp" alt="iphone"
					height="500px" width="400px">
			</div>
		</div>

		<div id="contentW">
			<div id="Text">
				<p>#Enhanceyourcover</p>
				<h1>Health Super Topup</h1>
				<br>
				<h4>
					<ul>
						<li>Increase your coverage at a<br> lower premium
						</li>
						<li>Avail cashless treatment</li>
						<li>Tax benefits* on the premiums paid</li>
					</ul>
				</h4>
				<p>T&C apply</p>
				<a href="Explore.jsp">
					<button id="btn1">Get started</button>
				</a> <br>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<img src="Assets/images/ins-super-topup-banner2.png" alt="iphone"
					height="500px" width="400px">
			</div>
		</div>

		<div id="contentB">
			<div id="Text">
				<p>#FamilySuperMoneyApp</p>
				<h1>
					Super Banking for<br>Family
				</h1>
				<br>
				<h4>
					<ul>
						<li>Zero Fund transfer fee for your InvestX<br>US Stocks
							a/c
						</li>
						<li>More Dollars for your Rupees</li>
						<li>6.6%* Fixed Deposit Interest Rate</li>
					</ul>
				</h4>
				<a href="Explore.jsp">
					<button id="btn3">Open savings</button>
				</a>
				<div id="app">
					<br> <img src="Assets/images/old-app-store.svg"
						alt="App store icon" height="100px" width="200px"> <img
						src="Assets/images/old-play-store.svg" alt="Play store icon"
						height="100px" width="200px">
				</div>
			</div>
			<div id="iphone">
				<img id="InvestX" src="Assets/images/Inestx 6th Iphone Pic.png"
					alt="iphone" height="500px" width="320px">
			</div>
		</div>
	</div>
	<!-- Footer of the InestX -->
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
				Investment in securities market are subject to market risks,<br>
				read all the related documents carefully before investing
			</h4>
		</div>
		<!-- </div> -->
		<p>All Rights Reserved | © Copyright 2023</p>
	</footer>
</body>
</html>