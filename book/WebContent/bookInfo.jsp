<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="bean.BookBean" %>
 <%@ page import="bean.UserBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
c{
font-family:arial;
color:red;
}
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
font-size:50px;
}
</style>
</head>
<body>
<%


if(request.getAttribute("dbStatus") !=null)
	
{%>
	<a><% out.println(request.getAttribute("dbStatus"));%></a><br><br>
	<a>THANK YOU FOR SHOPPING WITH US............</a>
<% }
else{
	
	%>

<form action="BuyController">
<%
	BookBean bBean=(BookBean)request.getAttribute("bBean2");
	


%>

    <img src=<%=bBean.getSrc()%> alt="" width="200" height="300"><br><br><br>
    <%-- <%
    out.println(bBean.getSrc());  
    
  
	 out.println(bBean.getBookId());%> --%>
	<c><b>Book Name:<% out.println(bBean.getBookname());%></b></c>&nbsp;&nbsp;&nbsp;&nbsp;
	<c>Author Name:<b><% out.println(bBean.getAuthorname());%></b><br><br></c>
	<c>Published By:<b><% out.println(bBean.getPublishername());%></b></c>&nbsp;&nbsp;&nbsp;&nbsp;
	<c>Price:<b><% out.println(bBean.getPrice());%></b><br><br></c>
	<c>Edition:<b><% out.println(bBean.getEdition());%></b></c>&nbsp;&nbsp;&nbsp;&nbsp;
	

	
	<% UserBean currentUser=null;
	currentUser=(UserBean)session.getAttribute("loggedUser");
	if(currentUser !=null){
	
	

%><br><br>
<c>BookId:</c>&nbsp;&nbsp;&nbsp;<input type="text" name="bookId" readonly="readonly" value=<%=bBean.getBookId() %>><br><br>
<c>Book Name:</c>&nbsp;&nbsp;&nbsp;<input type="text" name="bookname" readonly="readonly" value=<%=bBean.getBookname() %>><br><br>

<c>User Name:</c>&nbsp;&nbsp;&nbsp;<input type="text" name="userName" readonly="readonly" value=<%=currentUser.getFirstName() %>><br><br>
<%
if(Integer.parseInt(bBean.getQuantity())>0){
%>


<button class="button"  type="submit" name="btnBuy" value="BUY">BUY NOW</button>
<% }}
else if((Integer.parseInt(bBean.getQuantity())==0)){
	out.println("OUT OF STOCK");
}}
%>

</form>
</body>
</html>