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
if((request.getSession(false).getAttribute("Nurse")== null) )
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
					<p style="text-align:right;text-transform: Uppercase;margin-left:94px;font-weight:bold;"><i class="glyphicon glyphicon-user"></i>&nbsp<%=request.getAttribute("userName") %></p>
					
				</div>
			</div>
		</div>
   
		
		<div id="navigation-bar" class="navigation-bar">


  <div id="navigation-bar" class="bar">
    <button id="navbox-trigger" class="navbox-trigger"><i class="fa fa-lg fa-th"></i></button>
  </div>
  <div class="navbox">
   <jsp:include page="nurseNav.jsp"></jsp:include>
  </div>
  
  
</div>

				<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
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
					<h2 class="h-ultra">Tracking Number Of Baby Delivered</h2>
					</div>
					
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">
						<!--  Home page-->
             <div class="row">
              <div class="col-md-12">
            	<form action="" method="post">
            	
            	<div class="col-md-4"><input type="text" placeholder="dobBaby" class="form-control" name="q" placeholder="Enter Birth Date">
            	
            	</div>
            	
            	</form>
             </div>
             
             
             <br>
              <div class="container" style="margin-top:35px">
             
             <table class="table table-bordered table-striped table-hover sortable" bordercolor="white">
             <thead>
             <tr style="background-color:#4acdd1; color:white;">
            
             
             <th>Mother Name</th>
             <th>Baby Name</th>
             <th>Date</th>
             
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
            	 data ="select * from childhealth where dobBaby like'%"+query+"%'";
             }else{
            	 data ="select * from childhealth order by chId desc";
             }
             res=stat.executeQuery(data);
             while(res.next()){
             
             %>
             <tr>
             
             <td><%=res.getString("mother") %></td>
             <td><%=res.getString("babyName") %></td>
             <td><%=res.getString("dobBaby") %></td>
          
            
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
