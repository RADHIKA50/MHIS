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
if((request.getSession(false).getAttribute("Admin")== null) )
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
   <jsp:include page="adminNav.jsp"></jsp:include>
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
				<div class="row" style="margin-top:-55px">
					<div class="col-lg-12">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">View User</h2>
					</div>
					
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">
						<!--  Home page-->
             <div class="row">
             
             <div class="col-md-12">
              <div class="col-md-4">
            	<form action="" method="post">
            	<input type="text" class="form-control" name="q" placeholder="Search">
            	</form>
             </div>
            
             <div  class="col-md-4">
             <a style="margin-right:23px" href="adminAdd.jsp" class="btn btn-success"><i class="fa fa-plus">Add New User</i></a>
             
             </div>
              <div class="col-md-4">
            	
             </div>
             </div>
             
             <hr>
              <div class="col-md-12" style="margin-top:35px">
             <div class="table-responsive">
             <table class="table table-bordered table-striped table-hover " bordercolor="white">
             <thead>
             <tr style="background-color:#4acdd1; color:white;">
             <th>SN</th>
             <th>UserName</th>
             <th>Name</th>
             <th>Position</th>
             <th>Phone Number</th>
             <th>Email</th>
             <th>Action</th>
             </tr>
             </thead>
             <tbody id="myTable">
             
             <% 
             Statement stat=null;
             ResultSet res=null;
             stat = conn.createStatement();
             String query =request.getParameter("q");
             String data;
             if(query!=null){
            	 data ="select * from users where username like'%"+query+"%' or fullName like '%"+query+"%' or position like '%"+query+"%'or phoneNumber like '%"+query+"%'";
             }else{
            	 data ="select * from users order by uId desc";
             }
             res=stat.executeQuery(data);
             while(res.next()){
             
             %>
             <tr>
             <td><%=res.getString("uId") %></td>
             <td><%=res.getString("username") %></td>
             <td><%=res.getString("fullName") %></td>
             <td><%=res.getString("position") %></td>
             <td><%=res.getString("phoneNumber") %></td>
             <td><%=res.getString("email") %></td>
             <td class="text-center">
             <a href='adminDelete.jsp?d=<%=res.getString("uId") %>' class="btn btn-danger" onClick="return confirm('Are you absolutely sure you want to delete?')" ><i class="fa fa-trash"></i>Delete</a>
             <a href='update.jsp?uId=<%=res.getString("uId")%>' class="btn btn-success" ><i class="fa fa-edit"></i>Update</a>
             </td>
             </tr>
             <%} %>
             
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
