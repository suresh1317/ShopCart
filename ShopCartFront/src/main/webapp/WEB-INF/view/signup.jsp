<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp Page</title>
</head>
<body>
<%@ include file="/WEB-INF/view/header.jsp" %>
	<title>register</title>
	</head>
	<body>
		<div class="container">
		<c:if test="${match.equals('noperfectmatch')}">
			<div class="alert alert-danger">
  			<strong>Password and Confirm password does not match</strong>
			</div>
		</c:if>
		
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title" style="color: #58D68D;">SignUp Form</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form:form class="form-horizontal" method="post" modelAttribute="registrationForm">
						
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Name</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" required="true" class="form-control" path="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
		
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Email</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input type="email" required="true" class="form-control" path="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>
	
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Contact</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<form:input type="text" required="true" class="form-control" path="contact"  placeholder="Enter your Contact"/>
								</div>
							</div>
						</div>
	
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Gender</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<form:radiobutton class="active" path = "gender" value = "Male" label = "Male" />
									<form:radiobutton path = "gender" value = "Female" label = "Female" />
									</div>
							</div>
						</div>
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Date of birth</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i></span>
									<form:input type="text" required="true" class="form-control" path="dob"  placeholder="Enter your Date of Birth"/>
								</div>
							</div>
						</div>
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Country</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-flag fa" aria-hidden="true"></i></span>
									<form:input type="text" required="true" class="form-control" path="country"  placeholder="Enter your Country"/>
								</div>
							</div>
						</div>
	
						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Address</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-map-marker fa" aria-hidden="true"></i></span>
									<form:textarea type="text" required="true" class="form-control" path="address"  placeholder="Enter your Address"/>
								</div>
							</div>
						</div>
	
	
						<div class="form-group">
							<label  class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Password</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<form:input required="true" type="password" class="form-control" path="Password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-offset-1 cols-xs-2 col-sm-offset-1 cols-sm-2 control-label">Confirm Password</label>
							<div class="col-xs-offset-1 cols-xs-5 col-sm-offset-1 cols-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<form:input required="true" type="password" class="form-control" path="confirmPassword"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						

                        <div class="row">
                         <div class="col-md-offset-3 col-md-3">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" formaction="register">Register</button>
						 </div>
						 <div class="col-md-3">	
							<button type="reset" class="btn btn-danger btn-lg btn-block login-button" >Reset</button>
						 </div>
						</div>
					</form:form>
				</div>
			</div>
		</div>


<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>