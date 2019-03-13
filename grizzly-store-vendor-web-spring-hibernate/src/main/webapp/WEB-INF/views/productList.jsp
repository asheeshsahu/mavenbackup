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

/* user details card */
.card-wrapper {
  width: 250px;
  border: 1px solid #D8DDE5;
  border-radius: 10px;
  box-shadow: #d8dde5 0px 0px 2px;
  overflow: hidden;
  float: left;
  margin: 0 15px 15px;
}

.card-wrapper__bg {
  height: 100px;
  background: #DFDFDF url("http://ringvemedia.com/server//bg.jpg") no-repeat;
  background-position: 100% 100%;
  position: relative;
  
}

.card-wrapper__cover-bg {
  height: 100%;
  text-align: center;
 
  img {
    height: 100%;
  }
}

.card-wrapper__profile-pic {
  position: absolute;
  width: 100px;
  background: rgba(255,255,255,0.7);
  border-radius: 100px;
  height: 100px;
  left: 50%;
  margin-left: -50px;
  top: 30px;
  overflow: hidden;
  padding: 10px;
  
  img {
    width: 100%;
    height: 100%;
  }
}


.text-center {
  text-align: center;
}

.card-wrapper__details {
  padding-top: 65px;
  padding-bottom: 20px;
}

.card-wrapper__user-name a {
  color: #1085E0;
  text-decoration: none;
  font-size: 26px;
}

.card-wrapper__user-detail {
  font-size: 16px;
  color: #707070;
}

.card-wrapper__user-contact-info {
  padding-top: 20px;
  
  .card-wrapper__user-contact-info-label {
    font-size: 16px;
    color: #707070;
  }
  
  .card-wrapper__user-contact-info-value,
  .card-wrapper__user-contact-info-value a{
    font-size: 18px;
    color: #000;
    text-decoration: none;
  }
  
  .padding-right-md { padding-right: 5em; }
  .margin-left-md { margin-left: 5em; }
  
}
</style>
</head>
<body>

<section class="et-hero-tabs margin-left-md">
    <h1>GRIZZLY STORE</h1>
    <div class="et-hero-tabs-container">
      <a class="et-hero-tab" href="#tab-es6">Home</a>
      <a class="et-hero-tab" href="<c:url value='logout' />"><button type="button" class="btn btn-secondary btn-sm">Logout</button></a>
      <span class="et-hero-tab-slider"></span>
    </div>
  </section>
<div class="container">
<div class="row">

<div class="col-md-4">
<div class="padding-right-md">
<div class="card-wrapper"> 
  <!-- BG -->
  <div class="card-wrapper__bg">
    <div class="card-wrapper__cover-bg">
    </div>
    <div class="card-wrapper__profile-pic">
      <img src="https://pickaface.net/assets/images/slides/slide4.png"> 
    </div>
  </div>

  <!-- card details -->
  <div class="card-wrapper__details">

    <!-- First Fold -->
    <div class="card-wrapper__user-details">
      <div class="text-center card-wrapper__user-name">
        <a href="#">Asheesh</a>
      </div>
      <div class="text-center card-wrapper__designation card-wrapper__user-detail">
        Intern
      </div>
      <div class="text-center card-wrapper__company  card-wrapper__user-detail">
        CTS
      </div>
    </div>

    <!-- Second Fold -->
    <div class="card-wrapper__user-contact-info-wrapper text-center">
      <!-- email details -->
      <div class="card-wrapper__user-contact-info card-wrapper__user-contact-info--email">
        <div class="card-wrapper__user-contact-info-label">
          Email
        </div>
        <div class="card-wrapper__user-contact-info-value">
          <a href="#">asheeshkumar.sahu2@cognizant.com</a>
        </div>
      </div>

      <!-- phone details -->
      <div class="card-wrapper__user-contact-info card-wrapper__user-contact-info--email">
        <div class="card-wrapper__user-contact-info-label">
          Mobile
        </div>
        <div class="card-wrapper__user-contact-info-value">
          +91 - 00000000
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<div class="col-md-8">
<div class="margin-left-md">
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
</div>
</div>
</div>
</div>
</body>
</html>