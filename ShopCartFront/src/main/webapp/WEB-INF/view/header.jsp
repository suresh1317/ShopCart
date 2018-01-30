<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/jpg"/>
<title>ShopCart</title>
</head>
<body>


<nav class="navbar navbar-inverse navbar-Fixed-top" style="background:navyblue;">
<div class="container">

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>

<a class="nav navbar-nav navbar-left navbar-brand" href="home">ShopCart</a>
<div class="navbar-collapse collapse">
<ul class=" nav navbar-nav navbar-left"> 
<li ><a href="home" >Home</a></li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Caterory<b class="caret"></b></a>
<ul class="dropdown-menu">
<c:forEach var="list" items="${categoryList}">
<li><a href="productcategory${list.id}">${list.categoryName}</a></li>
</c:forEach>
</ul>
</li>
<li ><a href="viewproduct" >View Products</a></li>
<security:authorize access="hasRole('ADMIN')">
<li ><a href="adminadding" >ADMIN</a></li>
</security:authorize>

<security:authorize access="hasRole('USER')">
<li ><a href="cartpage" class="btn btn-info"><span style="color:white" class="glyphicon glyphicon-shopping-cart">CART</span></a></li>
</security:authorize>

</ul>
<form class="navbar-form navbar-left" action="search">
      <div class="form-group">
        <input type="text" required="true" class="form-control" name="searchname" placeholder="Search"/>
      </div>
      <button type="submit" class="btn btn-default">Search</button>
</form>
<ul class=" nav navbar-nav navbar-right">
<security:authorize access="isAnonymous()">
<li><a href="signup"><span class="glyphicon glyphicon-user"></span>Signup</a></li>
<li><a href="login" ><span class="glyphicon glyphicon-log-in"></span> Log-in</a></li>
</security:authorize>

<security:authorize access="isAuthenticated()">
<li class="dropdown">
		<a class="btn btn-default dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">
			Hi ${usermodel.name}<span class="caret"></span>
		</a>
		<ul class="dropdown-menu" >
					     
	<li role="separator" class="divider"></li>	                                   
		<li id="logout">
			<a href="${pageContext.request.contextPath}/performlogoutoperation"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
		</li>                    			    	
		</ul>		
</li>
</security:authorize>
</ul>
</div>
</div>
</nav>
