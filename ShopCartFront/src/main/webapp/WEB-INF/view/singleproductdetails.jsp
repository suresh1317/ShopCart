<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/jpg"/>
<title>Product</title>
</head>
<body>

<%@ include file="/WEB-INF/view/header.jsp" %>

<div class="container">

<div class="row">
	<div class="col-xs-12">
		<ol class="breadcrumb">
			<li><a href="home">Home</a></li>
			<li><a href="viewproduct">Products</a></li>
			<c:forEach var="list" items="${categoryList}">
			<c:if test="${list.id==productdetails.categoryId}">
			<li><a href="productcategory${list.id}">${list.categoryName}</a></li>
			</c:if>
			</c:forEach>
			<li class="active">${productdetails.productName}</li>
		</ol>
	</div>
</div>

<div class="row">
<div class="col-sm-4">
<div class="thumbnail">
<img src="<c:url value="/images/ProductImages/${productdetails.id}.jpg"/>"  height="2000" width="2000" class="img img-responsive"/>
</div>
</div>
<div class="col-sm-8">

	<h3>${productdetails.productName}</h3>
	<hr/>
	
	<h3>Description</h3>		
	<p>${productdetails.productDescription}</p>
	<hr/>
			
	<h4>Price: <strong> &#8377; ${productdetails.productPrice} /-</strong></h4>
	<hr/>
	
	<c:choose>
		<c:when test="${productdetails.productStock < 1}">
		<h3><span style="color:red">Out of Stock!</span></h3>
		</c:when>
		<c:otherwise>				
		<h6>Qty. Available: ${productdetails.productStock}</h6>
		</c:otherwise>
	</c:choose>			


<br/><br/>

<security:authorize access="hasRole('USER')">
	<c:choose>
		<c:when test="${productdetails.productStock < 1}">
			<a href="javascript:void(0)" class="btn btn-warning disabled"><strike>
			<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</strike></a>
		</c:when>
		<c:otherwise>				
		<form action="cartadd${productdetails.id}">
			<label >Quantity</label>
			<input type="number" name=quant value="1">
			<br/><br/>
			<button type="submit" class="btn btn-success">ADD to CART</button>
			</form>
		</c:otherwise>
	</c:choose>

</security:authorize>

<security:authorize access="hasRole('ADMIN')">
	<a href="<c:url value="adminupdateproduct${productdetails.id}" />" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span>EDIT</a>
<a href="<c:url value="admindeleteproduct${productdetails.id}" />" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>DELETE</a>
<br/>
</security:authorize>
<br/>
<a href="viewproduct" class="btn btn-primary"><strong>BACK</strong></a>



</div>

</div>

</div>
<%@ include file="/WEB-INF/view/footer.jsp" %>

</body>
</html>