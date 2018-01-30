<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/jpg"/>
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/view/header.jsp" %>

<div class="container">
		<div class="row">

			<h1>Your order has been placed!</h1>
			<br>
			<h1>Order Details</h1>

			<br>
			<div class='form-row'>
				&emsp;<label class='control-label'>Customer Name: </label>&nbsp;${usermodel.name}
			</div>
			<div class='form-row'>
				&emsp;<label class='control-label'>Customer Email: </label>&nbsp;${usermodel.email}
			</div>
			<div class='form-row'>
				&emsp;<label class='control-label'>Customer Phone: </label>&nbsp;${usermodel.contact}
			</div>
			<div class='form-row'>
				&emsp;<label class='control-label'>Shipping Address: </label>&nbsp;${usermodel.address}
			</div>

			<div class='form-row'>
				&emsp;<label class='control-label'>Amount Payable: </label>&nbsp;Rs.
				${total}
			</div>
			<div class='form-row'>
				&emsp;<label class='control-label'>Date of Delivery:
					Delivered within 7 working days</label>
			</div>
			<br>
			<h2>Thank you for shopping with us!</h2>
			<br> <a class="btn btn-success  btn-lg"
				href="viewproduct"><span class="glyphicon glyphicon-shopping-cart"></span>Continue
				Shopping</a> 
				<a class="btn btn-primary  btn-lg"
				href="home">Home</a>

		</div>
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>