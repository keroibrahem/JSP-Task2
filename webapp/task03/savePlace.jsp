<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	    String favPlace = request.getParameter("favPlace");
	
	    if (favPlace != null && !favPlace.trim().isEmpty()) {
	
	        Cookie placeCookie = new Cookie("favPlace", favPlace);
	
	        placeCookie.setMaxAge(30 * 24 * 60 * 60);
	
	        response.addCookie(placeCookie);
	    }
	
	    response.sendRedirect("homepage.jsp");
	%>

</body>
</html>