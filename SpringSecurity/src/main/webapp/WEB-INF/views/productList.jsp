<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
/* header */
body {
		font-family: "Century Gothic", 'Lato', sans-serif;
}

a {
	text-decoration: none;
}

.et-hero-tabs,
.et-slide {
    
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 15vh;
    position: relative;
    background: #eee;
		text-align: center;
		padding: 0 2em;
    h1 {
        font-size: 2rem;
        margin: 0;
        letter-spacing: 1rem;
    }
    h3 {
        font-size: 1rem;
        letter-spacing: 0.3rem;
        opacity: 0.6;
    }
}

.et-hero-tabs-container {
    display: flex;
    flex-direction: row;
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 50px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    background: #fff;
    z-index: 10;
    &--top {
        position: fixed;
        top: 0;
    }
}

.et-hero-tab {
    display: flex;
    justify-content: center;
    align-items: center;
    flex: 1;
    color: #000;
    letter-spacing: 0.1rem;
		transition: all 0.5s ease;
		font-size: 0.8rem;
	  &:hover {
			color:white;
      background: rgba(102,177,241,0.8);
			transition: all 0.5s ease;
    }
}

.et-hero-tab-slider {
    position: absolute;
    bottom: 0;
    width: 0;
    height: 6px;
    background: #66B1F1;
    transition: left 0.3s ease;
}

@media (min-width: 800px) {
	.et-hero-tabs,
	.et-slide {
    h1 {
        font-size: 3rem;
    }
    h3 {
        font-size: 1rem;
    }
	}
	.et-hero-tab {
		font-size: 1rem;
	}
}

/* add button */


</style>
</head>
<body>

<section class="et-hero-tabs">
    <h1>GRIZZLY STORE</h1>
    <div class="et-hero-tabs-container">
      <a class="et-hero-tab" href="#tab-es6">Home</a>
      <a class="et-hero-tab" href="<c:url value='logout' />"><button type="button" class="btn btn-secondary btn-sm">Logout</button></a>
      <span class="et-hero-tab-slider"></span>
    </div>
  </section>

<table class="table">
	<thead class="thead-dark">
		<tr>
<!-- 			<th>product id</th> -->
			<th>name</th>
			<th>brand</th>
			<th>category</th>
			<th>price</th>
			<th>rating</th>
		</tr>
	</thead>
	</tbody>
	<c:forEach var="tempProduct" items="${product}">
	
	<!-- construct an update link with book id -->
	<c:url var="updateLink" value="/updateProduct">
		<c:param name="product_id" value="${tempProduct.product_id}"></c:param>
	</c:url>
	
	<!-- construct an delete link with book id -->
	<c:url var="deleteLink" value="/deleteProduct">
		<c:param name="product_id" value="${tempProduct.product_id}"></c:param>
	</c:url>
	
	<!-- construct an view link with book id -->
	<c:url var="viewLink" value="/viewProduct">
		<c:param name="product_id" value="${tempProduct.product_id}"></c:param>
	</c:url>
	
		<tr>
<%-- 			<td>${tempProduct.product_id}</td> --%>
			<td>${tempProduct.name}</td>
			<td>${tempProduct.brand}</td>
			<td>${tempProduct.category}</td>
			<td>${tempProduct.price}</td>
			<td>${tempProduct.rating}</td>
			
			<td>
				<!-- display the update link --> 
				<a href="${updateLink}"><button type="button" class="btn btn-outline-secondary">Update</button></a>
				<a href="${deleteLink}"
				onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false"><button type="button" class="btn btn-outline-danger">Delete</button></a>
				<a href="${viewLink}"><button type="button" class="btn btn-outline-info">View</button></a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br>
<button type="button" class="btn btn-primary" onclick="window.location.href='showProduct'; return false">Add Product</button>
</body>
</html>