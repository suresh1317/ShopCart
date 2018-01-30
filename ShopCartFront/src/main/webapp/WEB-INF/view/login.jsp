<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@ include file="/WEB-INF/view/header.jsp" %>
<br/><br/><br/>
<div class="container">

<c:if test="${not empty message }">
	<div class="col-md-offset-3 col-md-5">
	<div class="alert alert-danger">
	${message}
	</div>
	</div>
</c:if>

<c:if test="${not empty weclome }">
	<div class="col-md-offset-3 col-md-5">
	<div >
	<center>
	<span style="color:#58D68D;"><h1>${weclome}</h1></span>
	</center>
	</div>
	</div>
</c:if>

<c:if test="${not empty Message }">
	<div class="col-md-offset-3 col-md-5">
	<div >
	<center>
	<span style="color:#58D68D;"><h1>${Message}</h1></span>
	</center>
	</div>
	</div>
</c:if>
<div class="row">
     <br/><br/>
     <div class="col-md-offset-3 col-md-5">
      
      <div class="panel panel-primary" >
       
       <div class="panel-heading">
        <h4 align="center">Login</h4>
       </div>
       
       <div class="panel-body">
        <form action="${pageContext.request.contextPath}/login" method="post" class="form-horizontal">
         <div class="form-group">
          <label class="col-md-2 control-label">Email: </label>
          <div class="col-md-8">
           <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
				<input type="text" required="true" class="form-control" name="username" id="email" placeholder="Enter your Email"/>
			</div>
          </div>
         </div>
         
        <div class="form-group">
          <label class="col-md-2 control-label">Password: </label>
          <div class="col-md-8">
           <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
				<input type="password" required="true" class="form-control" name="password" id="password" placeholder="Enter your Password"/>
			</div>
          </div>
         </div>
        
         <div class="form-group">
          <div class="col-md-offset-3 col-md-8">
           
           <button type="submit" value="Login" class="btn btn-primary">LOGIN</button>
           <a href="<c:url value="signup" />" class="btn btn-primary">Create Account</a>
          </div>
         </div>
        </form>
       
       </div>
      </div> 
     </div>
    </div>
   </div>

<br/><br/><br/><br/><br/>
<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>