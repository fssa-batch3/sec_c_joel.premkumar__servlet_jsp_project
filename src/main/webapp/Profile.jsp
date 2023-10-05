

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<!-- Include Tailwind CSS CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
	rel="stylesheet">
<style>
/* Custom styles for the sidebar */
aside {
	background-color: black; /* Dark black background */
}

ul {
	list-style: none;
}

li {
	transition: background-color 0.3s;
}

li:hover {
	background-color: #1E4620; /* Light green background on hover */
}

a {
	display: block;
	padding: 10px 20px;
	text-decoration: none;
	color: white;
}
/* Custom styles for the logout button */
.logout-button {
	background-color: #f44336; /* Red background */
	color: white;
	transition: background-color 0.3s;
}

.logout-button:hover {
	background-color: #d32f2f; /* Darker red background on hover */
}
</style>

</head>
<body class="flex">
	<!-- Aside Navbar -->
	<aside class="text-white h-screen w-0.7/4 p-6">
		<%
		String name = (String) session.getAttribute("name");
		%>
		<a href="index.jsp"> <img src="Assets/images/InvestX New.png"
			alt="Company Logo" class="w-25 h-10 mx-auto mb-4"></a>
		<h1 id="side_name" class="text-2xl font-semibold mb-4"><%=name%></h1>
		<ul class="space-y-2">
			<li><a href="<%=request.getContextPath()%>/GetHistoryByUserIdServlet" class="hover:text-blue-500">My Orders</a></li>
			<li><a href="<%=request.getContextPath()%>/addstock.jsp" class="hover:text-blue-500">Add Stock</a></li>
			<li><a href="<%=request.getContextPath()%>/ReadAllStocks"
				class="hover:text-blue-500">My Investments</a></li>
			<li><a href="#"
				class="logout-button py-2 px-4 rounded-md hover:bg-red-700">
					Logout </a></li>
		</ul>
	</aside>

	<!-- Main Content -->
	<main class="flex-1 p-8">
		<!-- Navigation Bar -->
		<nav class="bg-white p-4 shadow-md">
			<div class="flex justify-between items-center">
				<h1 class="text-xl font-semibold">User Profile</h1>
				<a href="<%=request.getContextPath()%>/LogoutServlet" class="text-blue-500 rounded-md hover:bg-red-700">Logout</a>
			</div>
		</nav>

		<!-- Profile Content -->
		<div class="bg-white p-8 rounded-lg shadow-md">
			<form class="space-y-4">
				<div class="mb-4">
					<label for="fullname" class="block text-gray-700 font-bold">Fullname</label>
					<input type="text" id="name" disabled
						class="w-full p-2 border border-gray-300 rounded-md shadow-sm">
				</div>
				<div class="mb-4">
					<label for="email" class="block text-gray-700 font-bold">Email</label>
					<input type="email" id="email" disabled
						class="w-full p-2 border border-gray-300 rounded-md shadow-sm">
				</div>
				<div class="mb-4">
					<label for="number" class="block text-gray-700 font-bold">Mobile
						Number</label> <input type="text" id="number" disabled
						class="w-full p-2 border border-gray-300 rounded-md shadow-sm">
				</div>
				<div class="flex space-x-4">
					<button id="edit"
						class="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600">
						Edit</button>
					<button id="update"
						class="px-4 py-2 bg-green-500 text-white rounded-md hover:bg-green-600"
						disabled>Update</button>
					<button id="delete"
						class="px-4 py-2 bg-red-500 text-white rounded-md hover:bg-red-600">
						Delete</button>
				</div>
			</form>
		</div>
	</main>
	<script type="text/javascript">
		function displayUser(user) {
			document.querySelector("#name").value = user.fullName;
			document.querySelector("#email").value = user.emailId;
			document.querySelector("#number").value = user.phoneNumber;
			document.querySelector("#side_name").innerHTML = "Hello "
					+ user.fullName + "!";

		}
		async function fetchUser() {
			try {
				const response = await
				fetch(location.origin + "/investx-web/GetUserJson");
				if (!response.ok) {
					throw new Error(`HTTP error! Status: ${response.status}`);
				}
				// Assuming the response is JSON data
				const user = await
				response.json();
				// Now you can work with 'info'
				console.log(user)
				displayUser(user[0]);
			} catch (error) {
				// Handle any errors that occurred during the fetch
				console.error("Fetch error:", error);
			}
		}
		// Call the async function to initiate the fetch
		fetchUser();
	</script>
</body>
</html>
