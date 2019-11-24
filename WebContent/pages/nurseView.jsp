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
response.sendRedirect("../index.jsp");} %>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<%@include file="header.jsp" %>

<div id="wrapper">
	
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="top-area" style="background-color:#4ACDD1;">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-6">
					<p class="bold text-right" style="text-transform: Uppercase;font-size:22px;">Maternity Health Information System</p>
					
					</div>
					
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
					<h2 class="h-ultra">View Phases</h2>
					</div>
					
						<div class="well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						<div id="adduser" class="col-md-9 col-sm-9 col-xs-12">
						
								<!-- Please add anything here -->
								<fieldset>
								<div class="container">
								<div class="row">
								<div class="col-md-12">
								<div class="col-md-3"><a  style="background-color:#4acdd1;"  class="btn btn-lg btn-primary position-absolute" href="ancView.jsp"><i class="fa fa-search" style="font-size:44px;"></i></br> ANTINATAL CARE</a></div>
        						<div class="col-md-3"><a  style="background-color:#4acdd1;" class="btn btn-lg btn-primary position-absolute" href="pncview.jsp"><i class="fa fa-search" style="font-size:45px;"></i></br> POSTNATAL CARE</a></div>
        						<div class="col-md-3"><a  style="background-color:#4acdd1;"  class="btn btn-lg btn-primary position-absolute" href="childHealthFormView.jsp"><i class="fa fa-search" style="font-size:44px;"></i></br> CHILD HEALTH</a></div>
        						<div class="col-md-3"><a  style="background-color:#4acdd1;"  class="btn btn-lg btn-primary position-absolute" href="lAndDFormView.jsp"><i class="fa fa-search" style="font-size:44px;"></i></br> LABOR AND DELIVERY</a></div>
        
									</div>
									
								</div>
							
								</div>
								</fieldset>
								
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
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<jsp:include page="scripts.jsp"></jsp:include>
</body>

</html>
