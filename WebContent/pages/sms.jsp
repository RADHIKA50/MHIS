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
  <jsp:include page="nurseNav.jsp"></jsp:include>
  </div>
  
  
</div>

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
					
					<h2 class="h-ultra">SMS</h2>
					
					
						<div class="container well well-trans">
						<div class="container" style="color:#4ACDD1">
						<div class="col-md-offset-3">
								
						<!-- /.modal compose message -->
  			<div class="col-md-8">
            <form role="form" class="form-horizontal" action="" method="POST">
               <div></br></div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputTo">To:</label>
                  <div class="col-sm-10"> <select class="form-control" >
								  <option value="0" selected>Select contacts</option>
								   <option >Mothers</option>
								  								 
								</select></div>
                </div>
            
                <div class="form-group">
                  <label class="col-sm-8" for="inputBody">Message:</label>
                  <div class="col-sm-12"><textarea class="form-control" id="inputBody" rows="8" style="font-size:16px;color: black;">Dear Mother!  You are requered to attend clinic on 16-04-2019.Please come on time.</textarea></div>
                </div>
                
                <div class="modal-footer">
           
                            
            <button type="button" onclick="myFunction()" class="btn btn-primary ">Send <i class="fa fa-arrow-circle-right fa-lg"></i></button>
         
          </div>
            </form>
        
          
          </div>
        <!-- /.modal compose message -->
             

              <div class="clearfix"></div>
           	</div>
						</div>
						</div>
						</div>

<script>
function myFunction() {
  alert("Message sent successfully");
}
</script>
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
