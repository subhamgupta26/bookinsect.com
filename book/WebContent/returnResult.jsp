<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.OrderBean" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ListIterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
	background-color: #abda0f;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 18px;
	margin: 10px;
	 border-radius: 8px;
}
a{
color:red;
font-family:arial;
}
c{
font-size:50px;
font-family:arial;
color:blue;
}
d{
color:red;
font-family:arial;
}
</style>
</head>
<body>
<form action="KartController">
	<%
		
	if(request.getAttribute("dbStatus")!=null){%>
		<c><% out.println(request.getAttribute("dbStatus")); %><br><br>
		Please Shop Again........</c>
	<%}
	else if (getServletContext().getAttribute("al") != null) {
			List al = (List) getServletContext().getAttribute("al");
			ListIterator it = al.listIterator();
			if(it.hasNext()){
			while (it.hasNext()) {
				OrderBean oBean = new OrderBean();
				oBean = (OrderBean) it.next();%>
				
				<a><%out.println(oBean.getBookName());%></a><br><br>
			
	
		
	
	<d>Book Id:</d>&nbsp;&nbsp;<input type="text" readonly="readonly" name="bookId" value=<%=oBean.getBookID() %>>&nbsp;&nbsp;
	<d>Order Id:&nbsp;&nbsp;</d><input type="text" readonly="readonly" name="orderId" value=<%=oBean.getOrderID() %>>&nbsp;&nbsp;
	<br><br>
	<button class="button" type="submit"  name="btnReturn2" value="Return">Return</button><br><br>
<%
} }
			else{
				out.println("No Current Orders");
			
			}}%>
</form>
</body>
</html>