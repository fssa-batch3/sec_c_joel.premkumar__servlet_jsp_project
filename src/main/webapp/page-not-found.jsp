<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>404 Page Not Found</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	background: aliceblue;
}

.page-wrap {
	min-height: 100vh;
}
</style>
<link rel="icon" type="image/png" sizes="60x32"
	href="<%=request.getContextPath()%>/assets/images/tabicon/icon.png">
</head>
<body>
	<div class="page-wrap d-flex flex-row align-items-center">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 text-center">
					<span class="display-1 d-block">404</span>
					<div class="mb-4 lead">The page you are looking for was not
						found.</div>
					<a href="<%=request.getContextPath()%>/index.jsp"
						class="btn btn-link">Back to Home</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>