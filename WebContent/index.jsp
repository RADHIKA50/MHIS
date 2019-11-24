<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" http-equiv="Content-Type" content="width=device-width,initial-scale:1.0,
user-scalabe=0, charset=ISO-8859-1">
<title>login</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<div id="header" class="row">
	<div class="logo col-md-3">
		<img src ="img/mcilogo.jpg" alt="logo">
	</div>
	<div class="title col-md-8"><h1>MATERNITY HEALTH INFORMATION SYSTEM</h1></div>
	
	
	</div>
	
	<div id="container" >
		<div class="col-md-4"></div>
		
		<div class="col-md-4">
			
			
			<div class="row" id="login-form">
				<div class="col-md-12" id="user-login">User Login</div>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4" id="logo">
							<img class="image" src ="img/image.jpg">
						</div>
						<div class="col-md-4"></div>
					</div><!-- -image -->
					<div class="alert-danger" style="color:red;text-align:center;">
									<span ><b  ><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></b></span>
								</div>
					
					<div class="col-md-12" id="input">
					
							
							<div style="clear:both"></div>
							
							<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
							
								<div class="form-group inner-addon left-addon">
									<input class="form-control" type="text" name="username"  placeholder="Enter Username">
									 <i class="glyphicon glyphicon-user" style="color:black;font-size:15px"></i>
								</div>
								
								<div class="form-group inner-addon left-addon">
									<input class="form-control" type="password" name="password" placeholder="Enter Password">
									 <i class="	glyphicon glyphicon-lock" style="color:black;font-size:15px"></i>
								</div>
								
								<div class="form-group inner-addon left-addon">
									<select class="form-control" name="position" >
								  <option value="0" selected>&nbsp&nbsp&nbsp&nbspRole...</option>
								   <option value="Admin">&nbsp&nbsp&nbsp&nbspAdmin</option>
								  <option value="Nurse">&nbsp&nbsp&nbsp&nbspNurse</option>
								  <option value="Doctor">&nbsp&nbsp&nbsp&nbspDoctor</option>
								  <option value="MaternityIn-charge">&nbsp&nbsp&nbsp&nbspMaternity in-charge</option>
								 
								</select>
									 <i class="	glyphicon glyphicon-user" style="color:black;font-size:15px"></i>
								</div>
								
					
								
								<input id="button" class="btn btn-primary" name="login" type="submit" value="Login">
							</form>
							
							
						
					</div><!-- input -->	
						
			</div><!-- -login section -->
			<div class="row" id="align-center"><h5><a href="pages/signUp.jsp">New Account&nbsp&nbsp</a> OR  <a href="pages/changePassword.jsp">&nbsp&nbspForgot Password?</a></h5></div>
			
		</div>
		<div class="col-sx-4">
			
		</div>
	</div>
	
		
       <jsp:include page="pages/footer.jsp"></jsp:include>
    </body>
</html>
