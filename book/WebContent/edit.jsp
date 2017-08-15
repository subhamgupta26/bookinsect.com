<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.UserBean" %>
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

 
 .inputs {
    padding: 8px;
    border-radius: 3px;
    border: 1px solid #CCC;
    background-image: none;
    width: 270px;
    
}
c{
font-family:arial;
color:blue;
}
</style>
</head>
<body>

<% 
	UserBean currentUser=null;
	currentUser=(UserBean)session.getAttribute("loggedUser");

%>
<form action="EditController">
<c>UserID</c><br>
<input class="inputs"  type="text" name="userid" value=<%=currentUser.getUserID() %>></input><br>
<c>First Name</c><br>
<input class="inputs" type="text" name="firstname" value=<%=currentUser.getFirstName() %>></input><br>
<c>Last Name</c><br>
<input class="inputs" type="text" name="lastname" value=<%=currentUser.getLastName() %>></input><br>
<c>New Password</c><br>
<input class="inputs" type="password" name="password" value=<%=currentUser.getPassword() %>></input><br>

<c>Address Line 1</c><br>
<input class="inputs" type="text" name="address" value=<%=currentUser.getAddress() %>></input><br>
<c>Address Line 2</c><br>
<input class="inputs" type="text" name="address2" value=<%=currentUser.getAddress2() %>></input><br>
<c>City</c><br>
<input class="inputs" type="text" name="city" value=<%=currentUser.getCity() %>></input><br>
<c>State</c><br>
<input class="inputs" type="text" name="state" value=<%=currentUser.getState() %>></input><br>
<c>Pincode</c><br>
<input class="inputs" type="text" name="pincode" value=<%=currentUser.getPincode() %>></input><br>
<c>Mobile</c><br>
<input class="inputs" type="text" name="mobile" value=<%=currentUser.getMobile() %>></input><br><br>
<input class=button type="Submit" name="btnEdit" value="UPDATE"></input>

</form>


<%
if(session.getAttribute("dbStatus")!=null){
	out.println(session.getAttribute("dbStatus"));
	session.removeAttribute("dbStatus");
	session.invalidate();
	
	
}
%>



</body>
</html>