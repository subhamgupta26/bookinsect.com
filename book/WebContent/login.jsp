<html>
<style type="text/css">
.button {
	background-color: blue;
	padding: 8px 10px 8px;
	color: white;
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

.inputs:focus {
    outline-color: #54B4AD;
}
c{
font-size:20px;
text-align:justify;
font-family:arial;
color:skyblue;
font-style:bold;
}
ab{
font-size:15px;
color: red;
}
a{
text-align:justify;
font-family:arial;
font-style:bold;
color:skyblue
}
</style>
<body>
<c><% 

	if(session.getAttribute("dbStatus")!= null){
	out.println(session.getAttribute("dbStatus"));
	session.removeAttribute("dbStatus");
	}
	
	%>
</c><br>
<form action="SignController">	
<c>Login To your Account</c><br>
<ab>We are happy to see you return! Please log in to continue</ab><br><br><br>
<a>Login ID</a><br>
<input class="inputs" placeholder="Enter your email Id" type="text" name="loginid"/><br><br><br>
<a>Password</a><br>
<input class="inputs" placeholder="Password" type="password" name="password"/><br><br>
<button class="button" name="btnLogIn">LogIn</button><br>
Don't have an account?<a href="signUp.jsp" title=""><b>Sign In</b></a>
</form>
</body>
</html>