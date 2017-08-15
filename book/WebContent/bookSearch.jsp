<!DOCTYPE html>
<html>
<head>
<style> 

.buttons{
padding:10px 730px;
width:250px}
c{
font-size:20px;
text-align:justify;
font-family:arial;
color:black;
font-style:bold;
}
. table a{
display:block;
border-style:hidden;
}

</style>
</head>
<body>


<form action="BookDetailController">
<c>CATEGORIES</c>
<br>
  <table width="100" class="table">     
  <tr>      
<td><button class="buttons" type="submit" name="Category" value="Fiction"  ><c>Fiction</c></button></td>
</tr>
<tr>      
<td><button class="buttons" type="submit" name="Category" value="History" ><c>History</c></button></td>
</tr>
<tr>      
<td><button class="buttons"  type="submit" name="Category" value="Autobiography" ><c>Autobiography</c></button></td>
</tr>
<tr>      
<td><button class="buttons" type="submit" name="Category" value="Religion" ><c>Religion</c></button></td>
</tr>
<tr>      
<td><button class="buttons"  type="submit" name="Category" value="Education"><c>Education</c></button></td>
</tr>
<tr>      
<td><button class="buttons"  type="submit" name="Category" value="Competitive" ><c>Competitive</c></button></td>
</tr>
</table>

</form>


</body>
</html>
