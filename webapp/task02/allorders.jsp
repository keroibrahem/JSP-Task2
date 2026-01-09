<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>All Orders</title>
</head>
<body>

<h2>All Orders in This Session</h2>

<%
    java.util.List<String> orders =
        (java.util.List<String>) session.getAttribute("orders");

    if (orders == null || orders.isEmpty()) {
%>
        <p>No orders yet.</p>
<%
    } else {
%>
        <ul>
        <% for (String order : orders) { %>
            <li><%= order %></li>
        <% } %>
        </ul>
<%
    }
%>

<br>
<a href="order.jsp">Back to Order</a>

</body>
</html>
