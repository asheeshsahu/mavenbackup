<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="saveBook" method="post" modelAttribute="book">
		book_id: <input type="hidden" name="book_id" value="${book.book_id}"><br>
		title: <input type="text" name="title"><br>
		author: <input type="text" name="author"><br>
		price: <input type="text" name="price"><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>