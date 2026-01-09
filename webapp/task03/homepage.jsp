<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>

	<h2>Welcome</h2>
	
	<%
	    String favPlace = "Not set yet";
	
	    Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie c : cookies) {
	            if (c.getName().equals("favPlace")) {
	                favPlace = c.getValue();
	                break;
	            }
	        }
	    }
	%>

	<p><b>Your Favorite Place:</b> <%= favPlace %></p>
	
	<a href="start.html">Change Favorite Place</a>

</body>
</html>
