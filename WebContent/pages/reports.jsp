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
  <script>
function myFunction() {
  alert("Downloaded successfully. Go to Generate_Report Folder");
}
</script>
</head>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Maternity Incharge")== null) )
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
   <jsp:include page="maternityNav.jsp"></jsp:include>
  </div>
  
  
</div>

				<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
				<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script> 
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
				<div class="row" style="margin-top:-60px">
					<div class="col-lg-12">
					
						
<div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading" style="background-color:#41cdd1">
                <div class="row" >
                  <div class="col col-xs-6" style="color:white;">
                    <h3 class="panel-title" style="text-transform: Uppercase;font-size:22px;font-weight:bold;">LIST OF REPORTS</h3>
                  </div>
                  
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list" >
                  <thead>
                    <tr style="color:#4acdd1">
                        
                        <th class="hidden-xs">ID</th>
                        <th>Report Name</th>
                        <th style="text-align:center;">Download</th>
                        
                    </tr> 
                  </thead>
                  <tbody>
                          <tr>
                           
                            <td class="hidden-xs">1</td>
                            <td><b>User_Report</b></td>
                            <td align="center">
                             <form action="<%=request.getContextPath()%>/Test" method="GET" name="upform">
                               <input type="submit" name="Submit" class="btn btn-primary" value="Download" onclick="myFunction()">
								</form>
                            </td>
                          </tr>
                           <tr>
                            
                            <td class="hidden-xs">2</td>
                            <td><b>Maternity_Rate_Report</b></td>
                            
                            <td align="center">
                              
                               <form action="<%=request.getContextPath()%>/MotherDeath" method="GET" name="upform">
                               <input type="submit" name="Submit" class="btn btn-primary" value="Download" onclick="myFunction()" >
								</form>
                            </td>
                          </tr>
                           <tr>
                            
                            <td class="hidden-xs">3</td>
                            <td><b>Mortality_Rate_Report</b></td>
                            
                            <td align="center">
                              <form action="<%=request.getContextPath()%>/Mortality" method="GET" name="upform">
                               <input type="submit" name="Submit" class="btn btn-primary" value="Download" onclick="myFunction()">
								</form>
                            </td>
                          </tr>
                          
                          
                        </tbody>
                </table>
            
              </div>
              <div class="panel-footer" style="background-color:#41cdd1;color:white;">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 1
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      
                     
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div>
             

              <div class="clearfix"></div>
        
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
