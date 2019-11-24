<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String uid = request.getParameter("uId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mhis";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where uId="+uid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
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
					<h2 class="h-ultra">Update</h2>
					</div>
					
						<div class="container well well-trans">
							<div class="container" style="color:#4ACDD1">
								<div class="row">
								<div class="col-md-12 ">
								<form class="form-horizontal" action="updateProcess.jsp" method="POST" name="myForm" onsubmit="return validateForm()" >
								
								<fieldset>
								
								
								 <input  name="hid" type="hidden"  class="form-control input-md" value="<%=resultSet.getInt("uId") %>">
								<div class="form-group  ">
								  <label class="col-md-4 control-label" for="Name (Full name)">Name (Full name):</label>  
								  <div class="col-md-4">
								 		<div class="input-group">
									       <div class="input-group-addon">
									        <i class="fa fa-user">
									        </i>
									       </div>
								       <input  name="fullName" type="text"  class="form-control input-md" value="<%=resultSet.getString("fullName") %>">
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
								       <input  name="adharNumber" type="text"  class="form-control input-md" value="<%=resultSet.getString("adharNumber") %>"  >
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
								       <input  name="dob" type="text" value="<%=resultSet.getString("dob") %>"   class="form-control textbook-n input-md" >
								      </div>
								  </div>
								</div>
								
								
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Gender">Gender:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline">
								      <input type="radio" name="gender" value="<%=resultSet.getString("gender") %>" >
								      Male
								    </label> 
								    <label class="radio-inline" for="Gender-1">
								      <input type="radio" name="gender"  value="<%=resultSet.getString("gender") %>" >
								      Female
								    </label> 
								    <label class="radio-inline" for="Gender-2">
								      <input type="radio" name="gender"  value="<%=resultSet.getString("gender") %>" >
								      Other
								    </label>
								  </div>
								</div>
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="radios">Marital Status:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline" for="radios-0">
								      <input type="radio" name="maritalStatus" id="radios-0" value="Married"  >
								      Married
								    </label> 
								    <label class="radio-inline" for="radios-1">
								      <input type="radio" name="maritalStatus" id="radios-1" value="Single">
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
								      <input  name="address" type="text" value="<%=resultSet.getString("address") %>"  class="form-control input-md">
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
								     <select class="form-control" name="position"  >
									   <option value="<%=resultSet.getString("position") %>"><%=resultSet.getString("position") %></option>
									   <option value="Admin">Admin</option>
									  <option value="Nurse">Nurse</option>
									  <option value="Doctor">Doctor</option>
									  <option value="Maternity In-Charge">Maternity in-charge</option>
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
								    <input name="phoneNumber" type="text" value="<%=resultSet.getString("phoneNumber") %>"  class="form-control input-md">
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
								    <input name="email" type="email" value="<%=resultSet.getString("email") %>" class="form-control input-md">
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
								       <input  name="username" type="text" value="<%=resultSet.getString("username") %>" class="form-control input-md">
								      </div>
								  </div>
								</div>
								<div class="form-group">
								  <label class="col-md-4 control-label" ></label>  
								  <div class="col-md-4"><input  type="submit" class="btn btn-success col-md-12" value="Update" onClick="return confirm('Are you sure you want to update?')">
								  <!--  <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> Submit</a>-->
								  </div>
								</div>
						
						
								
								</fieldset>
								</form>
								<%
								}
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
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
