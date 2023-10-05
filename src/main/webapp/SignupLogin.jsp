<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
    <title>InvestX login</title>
    <link rel="stylesheet" type="text/css" href="./Assets/css/Indexx.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
</head>

<body>

    <div class="main">
        <input type="checkbox" id="chk" aria-hidden="true">
        <div class="signup">
            <form id="form" action="./SignUpServlet" method="post">
                <label for="chk" aria-hidden="true">Welcome to InvestX</label>
                <input type="text" name="name" id="name" placeholder="User name" required="true" pattern="^[A-Za-z]+$" title="Please enter valid first name without number, special character and empty spaces" minlenght="3" maxlength="20" value="<%=(request.getAttribute("name") != null) ? request.getAttribute("name") : ""%>">
                <input type="email" name="email" id="mail" placeholder="Email" required="true" title="Please enter valid email id without empty spaces" value="<%=(request.getAttribute("email") != null) ? request.getAttribute("email") : ""%>">
                <input type="tel" name="phone" id="phone" placeholder="Phone number" required="true" pattern="^[6-9][0-9]{9}$" minlength="10" maxlength="10" title="Please Enter a Valid Mobile Number" value="<%=(request.getAttribute("phone") != null) ? request.getAttribute("phone") : ""%>">
                <input type="password" id="password" name="password" placeholder="Password" required="true"  minlength="8" maxlength="16" title="Password must contains at least one lowercase, one uppercase, one lowercase and one special, password length minimum 8 characters" value="<%=(request.getAttribute("password") != null) ? request.getAttribute("password") : ""%>">

                   
                <button id="user_signup">Sign up</button>
            </form>
        </div>
        <div class="login">
            <form id="login_page" action="./LoginServlet" method="post">
                <label for="chk" aria-hidden="true">Login</label>
                <input type="email" id="email" name="email" placeholder="Email" required="true" title="Please Enter Valid Email Id without spaces">
                <input type="password" id="pass" name="pass" placeholder="Password" required="true"  minlength="8" maxlength="16" title="Password must contains at least one lowercase, one uppercase, one lowercase and one special, password length minimum 8 characters">
                <button id="login">Login</button>
            </form>
        </div>
    </div>
	<%
	String error = (String) session.getAttribute("errorMsg");
	%>

	<script
		src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
		
	</script>
	<script>
		let error = null;
		<c:if test="${not empty errorMsg}">
		error = "${errorMsg}"
		</c:if>

		console.log(error);

		if (error == null) {

		} else if (error != "Success") {
			Notify.error(error);
		} else {

			Notify.success("Account Created Successfully!");
		}
	</script>

<script
		src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
	</script>


</body>
</html>