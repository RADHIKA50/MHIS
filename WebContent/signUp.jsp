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
  var x = document.forms["myForm"]["fullName"].value;
  var y = document.forms["myForm"]["username"].value;
  var z = document.forms["myForm"]["email"].value;
  var a = document.forms["myForm"]["password"].value;
  var b = document.forms["myForm"]["adharNumber"].value;
  var c = document.forms["myForm"]["position"].value;
  var d = document.forms["myForm"]["confpassword"].value;
  var e = document.forms["myForm"]["phoneNumber"].value;
  var f = document.forms["myForm"]["optPhoneNumber"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }else
  if (y == "") {
	    alert("username must be filled out");
	    return false;
	  }else
		  if (z == "") {
			    alert("email must be filled out");
			    return false;
			  }else
				  if (c == "-1") {
					    alert("position must be filled out");
					    return false;
				  }/*else
							  if (b =="" ) {
								    alert("Enter your adhar Number");
								    return false;
								  
					  }
							   else
						  if ((b.length<12) || (b.length>12) ){
							    alert("Enter your adhar Number Properly.Should have 12 digits");
							    return false;
							  }*/else
								  if (a == "" ) {
									    alert("Password Cant be Empty");
									    return false;
									  }else
							  if (a.length<8 ) {
								    alert("Password cant be less than 8 letters");
								    return false;
								  }else
									  if (e=="") {
										    alert("Fill the Phone Number");
										    return false;
										  }else
									  if (isNaN(e) ) {
										    alert("Enter valid phone Number (like : 7875812237)");
										    return false;
										  }else
											  if (isNaN(f) ) {
												    alert("Enter valid Optional phone Number (like : 7875812237)");
												    return false;
												  }else
													  if (a.length !=d.length ) {
														    alert("Password doesnt Match!");
														    return false;
														  }
}
</script>
<script type="text/javascript">

function confSubmit(form) {
if (confirm("Are you sure you want to submit the form?")) {
form.submit();

}

else {
alert("Data Sent successfully!");
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
					<h2 class="h-ultra">Sign Up</h2>
					</div>
					
						<div class="container well well-trans">
							<div class="container" style="color:#4ACDD1">
								<div class="row">
								<div class="col-md-12 ">
								<form class="form-horizontal" action="signRegister.jsp" method="POST" name="myForm" onsubmit="return validateForm()" >
								
								<fieldset>
								
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="Name (Full name)">Name (Full name):</label>  
								  <div class="col-md-4">
								 		<div class="input-group">
									       <div class="input-group-addon">
									        <i class="fa fa-user">
									        </i>
									       </div>
								       <input  name="fullName" type="text" placeholder="Name (Full name)" class="form-control input-md">
								      </div>
								  </div>
								</div>
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="adharNumber">Adhar Number:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="glyphicon glyphicon-credit-card"></i>
								        
								       </div>
								       <input  name="adharNumber" type="text" placeholder="Adhar Number" class="form-control input-md"  >
								      </div>  
								  </div>
								</div>
								
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Date Of Birth">Date Of Birth:</label>  
								  <div class="col-md-4">
								
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-birthday-cake"></i>
								       </div>
								       <input  name="dob" type="text" placeholder="Date Of Birth" onfocus="(this.type='date')" onblur="(this.type='text')" class="form-control textbook-n input-md" >
								      </div>
								  </div>
								</div>
								
								
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Gender">Gender:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline" for="Gender-0">
								      <input type="radio" name="gender" id="Gender-0" value="Male" required="required">
								      Male
								    </label> 
								    <label class="radio-inline" for="Gender-1">
								      <input type="radio" name="gender" id="Gender-1" value="Female" required="required">
								      Female
								    </label> 
								    <label class="radio-inline" for="Gender-2">
								      <input type="radio" name="gender" id="Gender-2" value="Other" required="required">
								      Other
								    </label>
								  </div>
								</div>
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="radios">Marital Status:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline" for="radios-0">
								      <input type="radio" name="maritalStatus" id="radios-0" value="Married" required="required">
								      Married
								    </label> 
								    <label class="radio-inline" for="radios-1">
								      <input type="radio" name="maritalStatus" id="radios-1" value="Single" required="required">
								      Single
								    </label>
								  </div>
								</div>
								
								
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="address">Address:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-map-marker"></i>
								       </div>
								      <input  name="address" type="text" placeholder="address" class="form-control input-md">
								      </div>
								  </div>
								</div>
								
								
								
								<!-- Text input-->
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="position">Position:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-briefcase"></i>
								       </div>
								     <select class="form-control" name="position">
									   <option value="-1" selected>Select User Position</option>
									   <option value="Admin">Admin</option>
									  <option value="Nurse">Nurse</option>
									  <option value="Doctor">Doctor</option>
									  <option value="MaternityIn-charge">Maternity in-charge</option>
									</select>
								      </div>
								  </div>
								</div>
								
								
							<!-- Text input-->
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="Phone number ">Phone number </label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     	<i class="fa fa-phone"></i> 
								       </div>
								    <input name="phoneNumber" type="text" placeholder="Primary Phone number" class="form-control input-md">
								      </div>
								      
								      <div class="input-group" style="margin-top:5%;">
								       <div class="input-group-addon">
								     <i class="fa fa-mobile fa-1x" style="font-size: 20px;"></i>
								       </div>
								    <input  name="optPhoneNumber " type="text" placeholder="Phone number(Optional) " class="form-control input-md">
								      </div>
								  </div>
								</div>
								
								<!-- Text input-->
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="Email Address">Email Address:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-envelope-o"></i>
								        
								       </div>
								    <input name="email" type="email" placeholder="Email Address" class="form-control input-md"  =" ">
								      </div>
								  </div>
								</div>
								
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="username">username:</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-user">
								        </i>
								       </div>
								       <input  name="username" type="text" placeholder="username" class="form-control input-md"  =" ">
								      </div>
								  </div>
								</div>
								
							
								
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="password">Password:</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-lock">
								        </i>
								       </div>
								       <input  name="password" type="password" placeholder="Password" class="form-control input-md" >
								      </div>
								
								    
								  </div>
								
								  
								</div>
								
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="password">Confirm Password:</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-lock">
								        </i>
								       </div>
								       <input  name="confpassword" type="password" placeholder="Confirm Password" class="form-control input-md">
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
