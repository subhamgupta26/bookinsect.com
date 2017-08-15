<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.BookBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #aabcfe;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #669;
	background-color: #e8edff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #039;
	background-color: #b9c9fe;
}

.tg .tg-a {
	text-align: center
}

.tg .tg-b {
	font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
	text-align: center
}
.button {
	background-color: #889;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 12px;
	margin: 10px;
}

</style>
</head>
<body>
<form action="BookDetailController">
<table class="tg">
		<tr>
			<th class="tg-a">BookId:</th>
			<th class="tg-a">Book Name:</th>
			<th class="tg-a">Publisher Name:</th>
			<th class="tg-a">Author name:</th>
			<th class="tg-a">Price:</th>
			<th class="tg-a">Edition:</th>
			<th class="tg-a">Quantity:</th>
			<th class="tg-a">Category:</th>
		
		</tr>
			<%
		if (getServletContext().getAttribute("bList") != null) {
			List bList = (List) getServletContext().getAttribute("bList");
			ListIterator it = bList.listIterator();
			while (it.hasNext()) {
				BookBean buBean = new BookBean();
				buBean = (BookBean) it.next();
	%>
		<tr>
			<td class="tg-b"><%=buBean.getBookId()%></td>
			<td class="tg-b"><%=buBean.getBookname()%></td>
			<td class="tg-b"><%=buBean.getPublishername()%></td>
			<td class="tg-b"><%=buBean.getAuthorname()%></td>
			<td class="tg-b"><%=buBean.getPrice()%></td>
			<td class="tg-b"><%=buBean.getEdition()%></td>
			<td class="tg-b"><%=buBean.getQuantity()%></td>
			<td class="tg-b"><%=buBean.getCategory()%></td>
			<td class="tg-b"><input type="submit" name="bookname" value=<%=buBean.getBookname() %>></input></td>
			
		</tr>
		<%
			}
			}
		%>
	</table>
</form>
</body>
</html>