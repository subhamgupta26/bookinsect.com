<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.UserBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ONline book store</title>

 <style type="text/css">

 ul#saturday {
	margin: 0;
	padding: 0;
	width: auto;
	position: relative;
	display: block;
	height: 36px;
	text-transform: uppercase;
	font-size: 12px;
	font-weight: bold;
	background: transparent 
	font-family: Helvetica, Arial, Verdana, sans-serif;
	border-bottom: 4px solid #336666;
	border-top: 1px solid #C0E2D4;
}

ul#saturday li {
	display: block;
	float: left;
	margin: 0;
	padding: 0;
}

ul#saturday li a {
	display: block;
	float: left;
	color: black;
	text-decoration: none;
	padding: 12px 20px 0 20px;
	height: 24px;
	background: transparent url("images/bgDIVIDER.gif") no-repeat top right;
}

ul#saturday li a:hover {
	background: transparent url("images/bgHOVER.gif") no-repeat top right;
}

ul#saturday li a.current, ul#saturday li a.current:hover {
	color: #fff;
	background: transparent url("images/bgON.gif") no-repeat top right;
}
b{
font-family:arial;
color:skyblue;
} 
</style> 
</head>
<body>
	<ul id="saturday">
	
			<%
			response.setIntHeader("Refresh", 1);
			UserBean currentUser = null;
			if (session.getAttribute("loggedUser") != null) {
				currentUser = (UserBean) session.getAttribute("loggedUser");
				if(currentUser.getUserID().equalsIgnoreCase("manager@book.com")){
		%>
		<li><a href="rightBar.jsp" target="rightBar"><b>Home</b></a></li>
		
		<li><b><a>Welcome&nbsp;&nbsp;&nbsp;<% out.println(currentUser.getFirstName()); %></a></b></li>
		<li><a href="bookdetail.jsp" target="rightBar"><b>BookDetail</b></a></li>
		<li><a href="bookdisplay.jsp" target="rightBar"><b>BookDisplay</b></a></li>
		<li><a href="displayUser.jsp" target="rightBar"><b>Users</b></a></li>
		<li><a href="logout.jsp" target="rightBar" ><b>Logout</b></a></li>
		
		
		<%} 
				else{
				%>
				
  
		
				
				
				
		<li><a href="rightBar.jsp" target="rightBar"><b>Home</b></a></li>
		
		<li><b><a>Welcome&nbsp;&nbsp;&nbsp;<% out.println(currentUser.getFirstName()); %></a></b></li>
		<li><a href="logout.jsp" target="rightBar" ><b>Logout</b></a><li>
		<%} }
				else{
		%>
		<li><a href="rightBar.jsp" target="rightBar"><b>Home</b></a></li>
		<li><a href="signUp.jsp" target="rightBar" title="" ><b>Sign Up</b></a></li>
		<li><a href="login.jsp" target="rightBar" title=""><b>LogIn</b></a></li>
	    
		<%
		} 
		
		%>
	</ul>
	<br />
</body>
</html>