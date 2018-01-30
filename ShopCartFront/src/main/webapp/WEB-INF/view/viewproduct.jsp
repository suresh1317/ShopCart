<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/jpg"/>
<title>View Product</title>
</head>
<body>

<%@ include file="/WEB-INF/view/header.jsp" %>
<security:authorize access="hasRole('ADMIN')">
<c:if var="var" test="${status.equals('update')}"/>
<c:if test="${var==true}">
<center>
<h1>PRODUCT MODULE</h1>
<form:form enctype="multipart/form-data" modelAttribute="product" class="form-horizontal">

<div class="form-group">
<label class="control-label col-sm-2" >Product ID:</label>
<div class="col-sm-10">
<form:input required="true" path = "id" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Product Name:</label>
<div class="col-sm-10">
<form:input required="true" path = "productName" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Product Description:</label>
<div class="col-sm-10">
<form:input required="true" path = "productDescription" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Number of Stock Available::</label>
<div class="col-sm-10">
<form:input required="true" path = "productStock" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Price:</label>
<div class="col-sm-10">
<form:input required="true" path = "productPrice" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Category:</label>
<div class="col-sm-1">
<form:select path="categoryId">
<c:forEach var="list" items="${categoryList}">
<form:option value="${list.id}">${list.categoryName}</form:option>
</c:forEach>
</form:select>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Supplier:</label>
<div class="col-sm-1">
<form:select path="supplierId">
<c:forEach var="list" items="${supplierList}">
<form:option value="${list.id}">${list.name}</form:option>
</c:forEach>
</form:select>
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-2" >Images:</label>
<div class="col-sm-1">
<form:input type="file" path="pimg"/>
</div>
</div>
<button type="submit" class="btn btn-primary navbar-inverse" formaction="adminupdateproductdata">Update Product</button>
</form:form>
</center>
</c:if>

</security:authorize>

<div class="container">
<center>

<div class="row">
	<div class="col-sm-12">
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

<form:form modelAttribute="product">
<table class="table table-hover">
<thead bgcolor="#222">
<tr>
<th></th>
<th><font color="#FFFFFF">NAME</font></th>
<th><font color="#FFFFFF">PRICE</font></th>
<th><font color="#FFFFFF">DESCRIPTION</font></th>
<security:authorize access="hasRole('ADMIN')">
<th><font color="#FFFFFF">EDIT OR DELETE</font></th>
</security:authorize>
<security:authorize access="hasRole('USER')">
<th></th>
</security:authorize>
</tr>
</thead>
<c:forEach var="list" items="${productList}">



<tr>
<td>
<a href="<c:url value="singleproductdetails${list.id}" />">
<img src="<c:url value="/resources/images/product/${list.id}.jpg"/>"  height="200" width="200" class="img img-responsive"/>
</a>
</td>

<td>
<a style="color:black;text-decoration : none" href="<c:url value="singleproductdetails${list.id}" />">
<h4><strong>${list.productName}</strong></h4>
</a>
</td>



<td>
<a style="color:black;text-decoration : none" href="<c:url value="singleproductdetails${list.id}" />">
<h4><strong>&#8377;${list.productPrice}</strong></h4>
</a>
</td>

<td>
<a style="color:black;text-decoration : none" href="<c:url value="singleproductdetails${list.id}" />">
<h4><strong>${list.productDescription}</strong></h4>
</a>
</td>



<security:authorize access="hasRole('ADMIN')">
<td>
<a href="<c:url value="adminupdateproduct${list.id}" />" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span>EDIT</a>
<a href="<c:url value="admindeleteproduct${list.id}" />" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>DELETE</a>
</td>
</security:authorize>

</tr>
</c:forEach>
</table>
</form:form>
</center>
</div>
</body>
</html>
<%@ include file="/WEB-INF/view/footer.jsp" %>
