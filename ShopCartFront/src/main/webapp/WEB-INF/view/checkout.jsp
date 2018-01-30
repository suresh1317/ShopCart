<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/jpg"/>
<title>Insert title here</title>
<style>
.jumbotronTransp {
	padding: 2px;
	font-size: 21px;
	font-weight: 200;
	color: white;
	background-color: blue;
}
</style>
</head>
<body>

<%@ include file="/WEB-INF/view/header.jsp"%>


<div class="container">
		<div class='row'>

			<div class='col-md-4'></div>
			<div class='col-md-4'>
				<div align="center">
					<h1>Checkout</h1>
				</div>
				<div class="col-sm-12 jumbotronTransp" align="center">
					<div class="head">
						<h4>Customer Details</h4>
					</div>
				</div>
				<div class='form-row'>
					&nbsp;&nbsp;<label class='control-label'>Name: </label>&nbsp;
					&nbsp;&nbsp;&nbsp;${usermodel.name}
				</div>
				<div class='form-row'>
					&nbsp;&nbsp;<label class='control-label'>Email: </label>&nbsp;
					&nbsp;&nbsp;&nbsp;${usermodel.email}
				</div>
				<div class='form-row'>
					&nbsp;&nbsp;<label class='control-label'>Phone: </label>&nbsp;
					&nbsp;&nbsp;&nbsp;${usermodel.contact}
				</div>
				<div class='form-row'>
					&nbsp;&nbsp;<label class='control-label'>Address: </label>&nbsp;
					<br/>&nbsp;&nbsp;&nbsp;${usermodel.address}
				</div>
				<div class='form-row'>
					&nbsp;&nbsp;<label class='control-label'>Country: </label>&nbsp;
					&nbsp;&nbsp;&nbsp;${usermodel.country}
				</div>
				<div class="col-sm-12 jumbotronTransp" align="center">
					<div class="head">
						<h4>Payment Details</h4>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group required'></div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group required'>
						<label class='control-label'>Pay By</label> <select name="Payment">
							<option value="CD">Credit or Debit Card</option>
							<option value="COD">Cash on Delivery</option>
							<option value="NB">Net Banking</option>
						</select>
					</div>
				</div>

				<div class='form-row'>
					<div class='col-xs-12 form-group required'>
						<label class='control-label'>Name on Card</label> <input
							class='form-control' type='text'>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group card required'>
						<label class='control-label'>Card Number</label> <input
							class='form-control card-number' type='text'>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-4 form-group cvc required'>
						<label class='control-label'>CVV</label> <input
							class='form-control card-cvc' placeholder='ex. 311' type='text'>
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'>Expiration</label> <input
							class='form-control card-expiry-month' placeholder='MM'
							type='text'>
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'> Year</label> <input
							class='form-control card-expiry-year' placeholder='YYYY'
							type='text'>
					</div>
				</div>


				<div class='form-row'>
					<div class='col-md-12 form-group'>
						<form action="invoice" method="post">
							<input type="hidden" value="${total}" name="total" />
							<tab4> <input
								class="form-control btn btn-primary "
								type="submit" value="Pay
							Rs. ${total}"></tab4>
						</form>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-md-12 form-group'>
						<a class='form-control btn btn-primary'
							href="cartpage">Go to Cart</a>
					</div>
				</div>
			</div>
		</div>
</div>



<%@ include file="/WEB-INF/view/footer.jsp"%>


</body>
</html>