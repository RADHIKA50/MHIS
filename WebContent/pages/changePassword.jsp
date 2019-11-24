<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MHIS</title>
	<jsp:include page="link.jsp"></jsp:include>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/dropdown.css">
   <style>
	h5,h2	{color:#4acdd1; }
	.form-group.  .control-label:after{content:"*";
	color:red;
	font-size:24px;}
  </style>

  <script>
function validateForm() {
 
  var z = document.forms["myForm"]["email"].value;
  var a = document.forms["myForm"]["password"].value;
  var d = document.forms["myForm"]["confpassword"].value;

		  if (z == "") {
			    alert("email must be filled out");
			    return false;
			  }else
				  if (a == "" ) {
					    alert("Password Cant be Empty");
					    return false;
					  }else
			  if (a.length<8 ) {
				    alert("Password cant be less than 8 letters");
				    return false;
				  }else
					  if (a.length !=d.length ) {
						    alert("Password doesnt Match!");
						    return false;
						  }
}
</script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<%@include file="header.jsp" %>

<div id="wrapper">
	
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="top-area" style="background-color:#4ACDD1;">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-6">
					<p class="bold text-right" style="text-transform: Uppercase;font-size:22px;" >Maternity Health Information System</p>
					
					</div>
					
					
				</div>
			</div>
		</div>
   
				
				<div id="navigation-bar" class="navigation-bar">
		
		
		  <div id="navigation-bar" class="bar" style="text-align:right;">
		  
		   <a href="<%=request.getContextPath()%>/Logout" class="tile" style="font-size:48px;color:#4acdd1"><i class="fa fa-sign-out" ></i> </a>
		  </div>
		</div>
		        <!-- /.container -->
		    </nav>
			
			<!-- Section: intro -->

    <section class="intro">
		<div class="intro-content">
		
			<div class="container">
				<div class="row">
					<div class="col-lg-12" style="margin-top:-73px">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">Change Password?</h2>
					</div>
					
						<div class="container well well-trans">
							<div class="container" style="color:#4ACDD1">
								<div class="row">
								<div class="col-md-12 ">
								<form class="form-horizontal" action="forgotProcess.jsp" method="POST" name="myForm" onsubmit="return validateForm()" >
								
								<fieldset>
								
								<div class="col-md-offset-4"><p style="color:red;">* Please fill the following to recover your password</p></div>
								
								<!-- Text input-->
								<div class="form-group  ">
								
								  <label class="col-md-4 control-label" for="Email Address">Email Address:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-envelope-o"></i>
								        
								       </div>
								    <input name="email" type="email" placeholder="Email Address" class="form-control input-md" required = required >
								      </div>
								  </div>
								</div>
								
								
								
								<!-- Text input-->
								<div class="form-group  ">
								
								  <label class="col-md-4 control-label" for="confirm password">Password</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-lock"></i>
								        
								       </div>
								    <input name="password" type="password" placeholder="Enter New Password" class="form-control input-md" required = required >
								      </div>
								  </div>
								</div>
								<div class="form-group  ">
								
								  <label class="col-md-4 control-label" for="confirm password">confirm password</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-lock"></i>
								        
								       </div>
								    <input name="confpassword" type="password" placeholder="Re-enter the password" class="form-control input-md" required = required >
								      </div>
								  </div>
								</div>
								
										
								
								
								<div class="form-group">
								  <label class="col-md-4 control-label" ></label>  
								  <div class="col-md-4"><input  type="submit" class="btn btn-success col-md-12" value="Submit" onClick="return confirm('Are you sure you want to submit?')">
								  <!--  <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> Submit</a>-->
								  </div>
								</div>
								
								
						<div style="color:red">
						<%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%>
						 </div>
						
								
								</fieldset>
								</form>
								</div>
							
								
								</div>
								   </div>
						

              <div class="clearfix"></div>
            
						
						</div>
						</div>


					</div>
									
				</div>		
			</div>
				
    </section>
	
</div>


<footer>
	
		<div class="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-6">
					<div class="wow fadeInLeft" data-wow-delay="0.1s">
					<div class="text-left">
					<p>&copy;Copyright - MHIS. All rights reserved.</p>
					</div>
					</div>
				</div>
				
			</div>	
		</div>
		</div>
	</footer>
<a href="#" class="scrollup" style="background-color:#4acdd1;"><i class="fa fa-angle-up active"></i></a>
<jsp:include page="scripts.jsp"></jsp:include>
</body>

</html>
