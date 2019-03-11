<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="saveProduct" method="post" modelAttribute="product">
		product_id: <input type="hidden" name="product_id" value="${product.product_id}"><br>
		name: <input type="text" name="name"><br>
		category: <input type="text" name="category"><br>
		description: <input type="text" name="description"><br>
		brand: <input type="text" name="brand"><br>
		price: <input type="text" name="price"><br>
		rating: <input type="text" name="rating"><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>