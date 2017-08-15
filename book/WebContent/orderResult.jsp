<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.OrderBean" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ListIterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
b{
font-family:arial;
color:red;
}
</style>
</head>
<body>
<b>THE BOOKS ORDERED ARE:</b><br><br><br>
	<%
	
		 if (getServletContext().getAttribute("al") != null) {
			List al = (List) getServletContext().getAttribute("al");
			ListIterator it = al.listIterator();
			if(it.hasNext()){
			while (it.hasNext()) {
				OrderBean oBean = new OrderBean();
				oBean = (OrderBean) it.next();%>
				
				<b>Book Name:</b> <% out.println(oBean.getBookName());%><br><br>
				<%
			}
			
			}
			else{
				out.println("No Orders");
			}
				}
		
		
	%>

</body>
</html>