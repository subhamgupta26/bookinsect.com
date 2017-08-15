<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.UserBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a:link, a:visited {
    background-color:white;
    color:black;
    padding: 10px 25px;
    text-align: center;	
    text-decoration: none;
    display: inline-block;
    font-family:arial;
}
a:hover, a:active {
    background-color:lightgray;
}
</style>

</head>
<body>
<a href="bookSearch.jsp" target="rightBar">Search</a>
	<%
			response.setIntHeader("Refresh", 1);
			UserBean currentUser = null;
			if (session.getAttribute("loggedUser") != null) {
				currentUser = (UserBean) session.getAttribute("loggedUser");
				%>


<% if(currentUser.getEmailID().equalsIgnoreCase("manager@book.com")){%>
<a href="edit.jsp" target="rightBar">Edit Information</a>
<%} else{ %>
<a href="edit.jsp" target="rightBar">Edit Information</a>
<a href="orders.jsp" target="rightBar">Orders</a>
<a href="returns.jsp" target="rightBar">Returns</a>
<%} }%>
</body>
</html>