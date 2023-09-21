
<aside class="text-white h-screen w-0.7/4 p-6">
	<%
	String name = (String) session.getAttribute("name");
	%>
	<a href="index.jsp"> <img src="Assets/images/InvestX New.png"
		alt="Company Logo" class="w-25 h-10 mx-auto mb-4"></a>
	<h1 id="side_name" class="text-2xl font-semibold mb-4"><%=name%></h1>
	<ul class="space-y-2">
		<li><a href="#" class="hover:text-blue-500">Home</a></li>
		<li><a href="#" class="hover:text-blue-500">Explore</a></li>
		<li><a href="<%=request.getContextPath()%>/ReadAllStocks"
			class="hover:text-blue-500">My Investments</a></li>
		<li><a href="#"
			class="logout-button py-2 px-4 rounded-md hover:bg-red-700">
				Logout </a></li>
	</ul>
</aside>