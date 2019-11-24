 <%@ page import="java.sql.ResultSet" %>
  <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.PreparedStatement" %>
     <%@ page import="java.sql.Connection" %>
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
	
  </style>
  
</head>
<% //In case, if Admin session is not set, redirect to Login page

if((request.getSession(false).getAttribute("Nurse")== null) )
{
response.sendRedirect("../index.jsp");}
%>

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


  <div id="navigation-bar" class="bar">
    <button id="navbox-trigger" class="navbox-trigger"><i class="fa fa-lg fa-th"></i></button>
  </div>
  <div class="navbox">
    <div class="navbox-tiles"><a href="#" class="tile">
    
      <div class="icon"><i class="fa fa-home"></i></div>
      <span class="title">Home</span></a><a href="#" class="tile">
      
      <div class="icon"><i class="fa fa-calendar"></i></div>
      <span class="title">Registration</span></a><a href="#" class="tile">
      
      <div class="icon"><i class="fa fa-cloud"></i></div>
      <span class="title">View</span></a><a href="#" class="tile">
      
      <div class="icon"><i class="fa fa-file-image-o"></i></div>
      <span class="title">Track</span></a><a href="#" class="tile">
      
      <div class="icon"><i class="fa fa-envelope-o"></i></div>
      <span class="title">SMS</span></a><a href=#" class="tile">
      
      <div class="icon"><i class="fa fa-file-movie-o"></i></div>
      <span class="title">Profile</span></a>
      <a href="<%=request.getContextPath()%>/Logout" class="tile">
      
      <div class="icon"><i class="fa fa-sign-out"></i></div>
      <span class="title">Logout</span></a>
      
      
      </div>
  </div>
  
  
</div>

				<script src="../js/jquery-1.11.3.min.js"></script>
				<script>
				(function () {
				    $(document).ready(function () {
				        $('#navbox-trigger').click(function () {
				            return $('#navigation-bar').toggleClass('navbox-open');
				        });
				        return $(document).on('click', function (e) {
				            var $target;
				            $target = $(e.target);
				            if (!$target.closest('.navbox').length && !$target.closest('#navbox-trigger').length) {
				                return $('#navigation-bar').removeClass('navbox-open');
				            }
				        });
				    });
				}.call(this));
				</script>
				
       
        <!-- /.container -->
    </nav>
	
	<!-- Section: intro -->

    <section class="intro">
		<div class="intro-content">
		
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">Edit Profile</h2>
					</div>
					<%
					
					String host= "jdbc:mysql://localhost:3306/mhis";
					Connection conn = null;
					Statement stat = null;
					ResultSet res = null;
					PreparedStatement stmt = null;
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					conn = DriverManager.getConnection(host,"root","");
					%>
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						<div class="container" style="color:#4ACDD1">
								<div class="row">
								<div class="col-md-12 ">
								<form class="form-horizontal" method="post">
								<fieldset>
								<%
								stat = conn.createStatement();
								int uid = Integer.parseInt(request.getParameter("uid"));
								String data= "select * from users where uid='"+uid+"'";
								res = stat.executeQuery(data);
								while(res.next()){
								%>
								<input name="uid" type="hidden" value='<%= res.getString("uid") %>' class="form-control input-md">
								      
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Name (Full name)">Name (Full name):</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-user">
								        </i>
								       </div>
								       <input name="fullName" type="text" placeholder="Name (Full name)" value='<%= res.getString("fullName") %>' class="form-control input-md">
								      </div>
								
								    
								  </div>
								
								  
								</div>
								
								<div class="form-group">
								  <label class="col-md-4 control-label" for="username">username:</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-user">
								        </i>
								       </div>
								       <input  name="username" type="text" placeholder="username" value='<%= res.getString("username") %>' class="form-control input-md">
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
								       <input  name="dob" type="date" value='<%= res.getString("dob") %>' placeholder="Date Of Birth" class="form-control input-md">
								      </div>
								  
								    
								  </div>
								</div>
								
								
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Gender">Gender:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline" for="Gender-0">
								      <input type="radio" name="Gender" id="Gender-0" value='<%= res.getString("gender") %>' checked="checked">
								      Male
								    </label> 
								    <label class="radio-inline" for="Gender-1">
								      <input type="radio" name="Gender" id="Gender-1" value='<%= res.getString("gender") %>'>
								      Female
								    </label> 
								    <label class="radio-inline" for="Gender-2">
								      <input type="radio" name="Gender" id="Gender-2" value='<%= res.getString("gender") %>'>
								      Other
								    </label>
								  </div>
								</div>
								
								<!-- Multiple Radios (inline) -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="radios">Marital Status:</label>
								  <div class="col-md-4"> 
								    <label class="radio-inline" for="radios-0">
								      <input type="radio" name="radios" id="radios-0" value='<%= res.getString("maritalStatus") %>' checked="checked">
								      Married
								    </label> 
								    <label class="radio-inline" for="radios-1">
								      <input type="radio" name="radios" id="radios-1" value='<%= res.getString("maritalStatus") %>'>
								      Unmarried
								    </label>
								  </div>
								</div>
								
								
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label">Address:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-map-marker"></i>
								        
								       </div>
								      <input name="address" type="text" value='<%= res.getString("address") %>' placeholder="address" class="form-control input-md">
								      </div>
								  
								    
								  </div>
								</div>
								
								
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="position">Position:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-briefcase"></i>
								        
								       </div>
								     <select class="form-control" name="position" >
								  <option value="0" selected>Select User Position</option>
								   <option value='<%= res.getString("position") %>'>Admin</option>
								  <option value='<%= res.getString("position") %>'>Nurse</option>
								  <option value='<%= res.getString("position") %>'>Doctor</option>
								  <option value='<%= res.getString("position") %>'>Maternity in-charge</option>
								 
								</select>
								      </div>
								  
								    
								  </div>
								</div>
								
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Phone number ">Phone number:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-phone"></i>
								        
								       </div>
								    <input  name="phoneNumber" type="text" placeholder="Phone number" value='<%= res.getString("phoneNumber") %>' class="form-control input-md">
								    
								      </div>
								     
								  
								  </div>
								</div>
								
								<!-- Text input-->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="Email Address">Email Address:</label>  
								  <div class="col-md-4">
								  <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-envelope-o"></i>
								        
								       </div>
								    <input  name="email" type="email"  value='<%= res.getString("email") %>' placeholder="Email Address" class="form-control input-md">
								    
								      </div>
								  
								  </div>
								</div>
								
								<div class="form-group">
								  <label class="col-md-4 control-label" for="password">Password:</label>  
								  <div class="col-md-4">
								 <div class="input-group">
								       <div class="input-group-addon">
								        <i class="fa fa-lock">
								        </i>
								       </div>
								       <input  name="password" type="text" value='<%= res.getString("password") %>' placeholder="Password" class="form-control input-md">
								      </div>
								
								    
								  </div>
								
								  
								</div>
								
								
								
								<div class="form-group">
								  <label class="col-md-4 control-label" ></label>  
								  <div class="col-md-4">
								  <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> Update</a>
								  </div>
								</div>
								<%}%>
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
<a href="#" class="scrollup" style="background-color:#4acdd1"><i class="fa fa-angle-up active"></i></a>
<jsp:include page="scripts.jsp"></jsp:include>
</body>

</html>
<%
String username = request.getParameter("username");    
String password= request.getParameter("password");
String fullName = request.getParameter("fullName");
String email = request.getParameter("email");
String address = request.getParameter("address");
String position = request.getParameter("position");
String dob = request.getParameter("dob");
String maritalStatus = request.getParameter("maritalStatus");

String gender = request.getParameter("gender");
String phoneNumber = request.getParameter("phoneNumber");

if(username!=null && password!=null && email!=null && fullName!=null && phoneNumber!=null && position!=null && dob!=null)
{
String query = "update users set username=?,password=?,email=?,fullName=?,phoneNumber=?,position=?,dob=? where uid='"+uid+"'";
stmt = conn.prepareStatement(query);
stmt.setString(1,username);
stmt.setString(2,password);
stmt.setString(3,email);
stmt.setString(4,fullName);
stmt.setString(5,phoneNumber);
stmt.setString(6,position);
stmt.setString(7,dob);
stmt.executeUpdate();
response.sendRedirect("profile.jsp");
}
%>
