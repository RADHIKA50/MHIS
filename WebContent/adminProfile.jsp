<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
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
	.moblist_prf{ width:100%; padding:0;}

.moblist_prf li{floath:left; list-style:none; display:inline;}
  </style>
  
</head>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
response.sendRedirect("../index.jsp");} %>
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
   <jsp:include page="adminNav.jsp"></jsp:include>
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
					
					
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						
  <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="text-center" style="color:#4acdd1">Your Profile</h3>
            
        </div>
        
        
         <% 
                Connection connection = DriverManager.getConnection(
                		"jdbc:mysql://localhost:3306/mhis", "root", "");

                Statement statement = connection.createStatement() ;
                ResultSet rs = statement.executeQuery("select fullName,username,email,gender,address,dob,position,phoneNumber from users where position='Admin'") ; 
        %>
       <div class="panel-body">
           
            <table class="table table-bordered" style="font-weight:bold; font-size:18px;">
                  <tbody>    
                              
  				<% while(rs.next()){ %>
                     <tr >
                        <td style="color:#4acdd1">Full Name</td>
                        <td><%= rs.getString(1)%> </td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">username</td>
                        <td><%= rs.getString(2)%></td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">Email</td>
                        <td><%= rs.getString(3)%></td>
                     </tr>
                     <tr><td style="color:#4acdd1">Gender</td>
                                          <td><%= rs.getString(4)%></td>
                                          </tr>
                     <tr>
                        <td style="color:#4acdd1">Address</td>
                        <td><%= rs.getString(5)%></td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">Date of Birth</td>
                                                <td><%= rs.getString(6)%></td>
                                             </tr>
                    
                     <tr>
                        <td style="color:#4acdd1">Position</td>
                                                <td><%= rs.getString(7)%></td>
                                             </tr>
                     <tr>
                        <td style="color:#4acdd1">Phone Number</td>
                        <td> <%= rs.getString(8)%>
                        </td>
                     </tr>
                     <% } %>
                     </div>
                  </tbody>
               </table>
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
