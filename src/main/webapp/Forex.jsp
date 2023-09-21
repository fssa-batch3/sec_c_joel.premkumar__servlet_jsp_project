<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Assets/css/Forex.css">
</head>
<body>
<!-- Header -->
    <header>
        <a href="index.html">
<img src="Assets/images/InvestX Logo.png" alt="Logo Comes here" height="45px">
</a>
    </header>

    <br>
    <!-- INR to Dollar -->
    <div id="Add">
        <div id="US">
            <img id="coin" src="Assets/images/coin.webp" alt="COIN INR - Dollar">
            <br>
            <h1>Benefits of Investing<br>in US Stocks</h1>
            <h3>
                <ul>
                    <li>Diversify your Portfolio</li>
                    <li>Gain from Dollar's Appreciation</li>
                    <li>Opportunity to Invest in High Potential Companies</li>
                </ul>
            </h3>
        </div>
        <form id="Money">
            <h5>
<!-- Rates will change in: <span>4:59</span> -->
</h5>
            <h2>Checkout & Proceed:</h2>
            <img id="stock_img" alt="stock_img">
            <br>
            <h3 id="stock_name"></h3>
            <br>
                <h3>No. of Stocks:</h3>
                <h2 id="value"></h2>
                <br>
                <h4>Total Payable Amount:</h4>
                <h3 id="dollar"></h3>
                <div id="disclaimer"></div>
                <!-- <button id="add_money_btn">Add Money</button> -->
                
                <button type="submit" class="invest_btn">Invest Now</button>
                        
        </form>
    </div>
    <pre>

    </pre>
    <br>

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
        <p>All Rights Reserved | © Copyright 2022</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script type="text/javascript"
			src="<%=request.getContextPath()%>/Assets/js/forex.js"></script>
    
</body>
</html>