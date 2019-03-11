<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<table border="2">
	<thead>
		<td>product id</td>
		<td>name</td>
		<td>brand</td>
		<td>category</td>
		<td>price</td>
		<td>rating</td>
	</thead>
	<c:forEach var="tempProduct" items="${product}">
	
	<!-- construct an update link with book id -->
	<c:url var="updateLink" value="/updateProduct">
		<c:param name="product_id" value="${tempProduct.product_id}"></c:param>
	</c:url>
	
	<!-- construct an delete link with book id -->
	<c:url var="deleteLink" value="/deleteProduct">
		<c:param name="product_id" value="${tempProduct.product_id}"></c:param>
	</c:url>
	
		<tr>
			<td>${tempProduct.product_id}</td>
			<td>${tempProduct.name}</td>
			<td>${tempProduct.brand}</td>
			<td>${tempProduct.category}</td>
			<td>${tempProduct.price}</td>
			<td>${tempProduct.rating}</td>
			
			<td>
				<!-- display the update link --> <a href="${updateLink}">Update</a>
				<a href="${deleteLink}"
				onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>
<br>
<input type="button" value="Add Product" onclick="window.location.href='showProduct'; return false"/>
</body>
</html>