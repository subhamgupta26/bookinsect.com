<html>
<style type="text/css">
.button {
	background-color: #abda0f;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: justify;
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
a{
text-align:justify;
font-family:arial;
font-style:bold;
color:skyblue
}
p.big {
    line-height: 0.8;
}
c{
font-size:20px;
text-align:justify;
font-family:arial;
color:skyblue;
font-style:bold;
}
b{
color:skyblue;
}
</style> 
<body>
<%
		if (session.getAttribute("dbStatus") != null) {
	%>
	<h1 style="color: red;">
		<%=session.getAttribute("dbStatus")%>
	</h1>
	<%
		session.removeAttribute("dbStatus");
		}
	%><%!  %>
	<form action="BookDetailController">
<p>

<a>Book name</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Publisher Name</a><br><br>
<input class="inputs" placeholder="Book Name" type="text" name="bookname"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<input class="inputs" placeholder="Publisher Name" type="text" name="publishername"/>
<br>
<br>
<a>Author Name</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Price</a><br><br>
<input class="inputs" placeholder="Author Name" type="text" name="authorname"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input class="inputs" placeholder="Price" type="text" name="price"/>
	  <br><br>
<a>Edition</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Quantity</a><br><br>
<input class="inputs" placeholder="Edition" type="text" name="edition"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
<input class="inputs" placeholder="Quantity" type="text" name="quantity"/> 
 <br><br>
 <a>Category</a><br><br>
  <input class="inputs" placeholder="Category" type="text" name="category"/>
  <br>
  <br>
  </p>
  		<button class="button" name="btnSave">SAVE</button>
			
</form>
</body>
</html>
  
  
  
  
  
  