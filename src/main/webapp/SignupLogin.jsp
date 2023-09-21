<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InvestX-Login</title>
<link rel="stylesheet" type="text/css" href="Assets/css/Indexx.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">
    <div class="signup">
        <form action="<%=request.getContextPath()%>/SignUpServlet" method="post" id="form">
            <label for="chk" aria-hidden="true">Welcome to InvestX</label>
            
            <input type="text" name="name" id="name" placeholder="User name"
                pattern="^[A-Za-z\\s]{3,255}$"
                title="Must contain at least 3 characters."
                required>
                
            <input type="email" name="email" id="mail" placeholder="Email" required>
            
            <input type="tel" name="phone" id="phone" placeholder="Phone number" required>
            
            <input type="password" id="password" name="password" placeholder="Password hi"
                pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                title="Must contain at least 8 characters, including at least one uppercase letter, one lowercase letter, and one number."
                required>
            <button type="submit" id="user_signup">Sign up</button>
        </form>
    </div>
</div>

    <div class="login">
        <form id="login_page" action="<%=request.getContextPath()%>/LoginServlet" method="get">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="email" id="email" name="email" placeholder="Email" required>
            <input type="password" id="pass" name="pass" placeholder="Password" required>
            <button type="submit" id="login">Login</button>
        </form>
    </div>


</body>
</html>