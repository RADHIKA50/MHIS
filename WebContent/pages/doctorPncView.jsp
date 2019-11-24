<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

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
if((request.getSession(false).getAttribute("Doctor")== null) )
{
response.sendRedirect("../index.jsp");} %>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<jsp:include page="header.jsp" ></jsp:include>
<%@include file="connect.jsp" %>
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
   <jsp:include page="doctorNav.jsp"></jsp:include>
  </div>
  
  
</div>
<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
				<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
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
					<h2 class="h-ultra">PNC View  </h2>
					</div>
					
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">
						<!--  Home page-->
             <div class="row">
              <div class="col-md-4">
            	<form action="" method="post">
            	<div class="col-md-7"><input type="text" class="form-control" name="q" placeholder="Enter Mother Name"></div>
            	</form>
             </div>
             <div class="col-md-4"></div>
            
             <br>
              <div class="container" style="margin-top:35px">
             
             <table class="table table-bordered table-striped table-hover sortable" bordercolor="white">
             <thead>
             <tr style="background-color:#4acdd1; color:white; text-align:center;">
             
             <th>mother Name</th>
             <th>address</th>
             <th>card Number</th>
             <th>Date of Birth</th>
             
             <th>Action</th>
             
  
            
             </tr>
             </thead>
             <tbody>
             
             <% 
             Statement stat=null;
             ResultSet res=null;
             stat = conn.createStatement();
             String query =request.getParameter("q");
             String data;
             if(query!=null){
            	 data ="select * from pnc where motherName like'%"+query+"%'";
             }else{
            	 data ="select * from pnc order by pncId desc";
             }
             res=stat.executeQuery(data);
             while(res.next()){
             
             %>
             <tr>
            
             <td><%=res.getString("motherName") %></td>
             <td><%=res.getString("address") %></td>
             <td><%=res.getString("cardNumber") %></td>
             <td><%=res.getString("dob") %></td>
           
              
     
             <td class="text-center">
             <a href='DoctorpncViewDetails.jsp?pncId=<%=res.getString("pncId") %>'   class="btn btn-primary"  onClick="return confirm('Are you absolutely sure you want to view?')"><i class="fa fa-search"></i>View</a>
             </td>
             </tr>
             <%} %>
             
             </tbody>
             
             </table>
             </div>

              <div class="clearfix"></div>
            </div>
						
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
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<jsp:include page="scripts.jsp"></jsp:include>
</body>

</html>
