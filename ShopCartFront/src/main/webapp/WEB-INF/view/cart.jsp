<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="/WEB-INF/view/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                    
                    
                    <c:forEach var="list" items="${usercartlist}">
                    <c:forEach var="productlist" items="${productList}">
                    <c:if test="${list.productId==productlist.id}">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> 
                            <img src="<c:url value="/resources/images/product/${list.productId}.jpg"/>"  height="200" width="200" class="img img-responsive"/>
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">${productlist.productName}</h4>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        
                        <td class="col-sm-1 col-md-1" style="text-align: center">
    					${list.quantity}
                        </td>
                        
                        <td class="col-sm-1 col-md-1 text-center">
                        &#8377;${productlist.productPrice}
                        </td>
                        
                        <td class="col-sm-1 col-md-1 text-center">
                        <strong>&#8377;${list.quantity*productlist.productPrice}</strong>
                        <c:set var="total" value="${total+list.quantity*productlist.productPrice}">
                        </c:set>
                        </td>
                        
                        <td class="col-sm-1 col-md-1">
                        <a href="<c:url value="cartremove${list.cartItemId}"/>" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </a>
                        </td>
                    </tr>
                    </c:if>
                    </c:forEach>
                    </c:forEach>
                    
                    
                    
                    <tr>
                    <td></td>
                    <td></td>
                    <td>TOTAL</td>
                    <td><strong>&#8377;${total}</strong></td>
                    
                    </tr>
                    
                    
                    <tr>
                        <td>
                        <a href="viewproduct"class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></td>
                        <td>
                        
                        <c:if test="${not empty usercartlist}">
						<form action="checkout" method="post">
							<input type="hidden" value="${total}" name="total" />
							
							<button type="submit" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button>
						</form>
                        </c:if>
                        
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>