<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.UserBean" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
b{
color:blue;
font-family:arial;
}
</style>
</head>
<body>

	
	
<form action="KartController">
<%
	UserBean currentUser=null;
	if(session.getAttribute("loggedUser")!=null){
	currentUser=(UserBean)session.getAttribute("loggedUser");

	

%>
<b>User Name:</b><input type="text" name="username" value=<%=currentUser.getFirstName() %>><br><br>
<input type="submit" name="btnKart" value="Fetch Orders">
<%} %>
</form>
</body>
</html>