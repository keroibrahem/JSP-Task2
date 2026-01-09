<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Food Order</title>
</head>
<body>

<h2>Order Food</h2>

<form action="order.jsp" method="post">
    Food Name:
    <input type="text" name="food" required>
    <input type="submit" value="Add Order">
</form>

<%
    String food = request.getParameter("food");

    if (food != null && !food.trim().isEmpty()) {

        // Get orders from session
        java.util.List<String> orders =
            (java.util.List<String>) session.getAttribute("orders");

        if (orders == null) {
            orders = new java.util.ArrayList<>();
        }

        orders.add(food);
        session.setAttribute("orders", orders);
    }
%>

<br>
<a href="allorders.jsp">View All Orders</a>

</body>
</html>
