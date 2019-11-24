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
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/multiForm.css">
   <style>
	h5,h2	{color:#4acdd1; }
#add__new__list{
    top: -65px;
    left: 55%;
}	
  </style>
  <script src="../js/ancValidation.js"></script>
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
    <button id="navbox-trigger" style="margin-right:100%;" class="navbox-trigger"><i class="fa fa-lg fa-th"></i></button>
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
					

        <div class="col-md-offset-2" style="margin-top:-53px;">
            <div class="col-md-10 form-box" >
                <form role="form" class="registration-form" action="babyProcess.jsp" method="post" name="myForm" onsubmit="return validateForm()" >
                    <fieldset>
                        <div class="form-top" style="padding-top:23px;">
                            <div class="form-top-center">
                                <h3><span><i class="fa fa-calendar" aria-hidden="true"></i></span> <b> BABY DETAILS:</b></h3>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <div class="row">
                                <div class="form-group col-md-4 col-sm-4">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-credit-card"></i> </div>
                                    <input type="text" class="form-control" name="babyID" placeholder="Baby ID" id="fname">
                                    </div>
                                </div>
                                <div class="form-group col-md-8 col-sm-8">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="babyName" placeholder="Baby Name" id="lname">
                                    </div>
                                </div>
                            </div>
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="mother" placeholder="Mother" id="fname">
                                    </div>
                                </div>
                               
                                <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-map-marker"></i> </div>
                                <select class="form-control" name="address">
                                    <option>Address</option>
                                    <option>Shivaji Nagar</option>
                                    <option>Old Sanvi</option>
                                    <option>Pimple Gaurav</option>
                                    <option>Pimpri Chinchwad</option>
                                </select>
                                </div>
                            </div>
                            </div>
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-birthday-cake"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n" name="dobBaby" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Birthdate" id="fname">
                                    </div>
                                </div>
                                
                                 <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group" >
								       <div class="input-group-addon">
								     <i class="fa fa-calendar"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n"  name="dateOfChildAttend" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Baby Attendance date" id="fname">
                                    </div>
                                </div>
                               
                            </div>
                         
                            
                            
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset><!-- /Personal Details -->
                    
                     <fieldset>
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><span><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>Measurements:</h3>
                               
                            </div>
                        </div>
                        
                        <div class="form-bottom">
                        
                        <div class="row">
                        
                         <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-calendar"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n" name="dateOfPCV" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="PCV Date" id="fname">
                                    </div>
                                </div>
                                
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-calendar"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n" name="dateOfRotta" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Rotta Date" id="fname">
                                    </div>
                                </div>
                        
                        </div>
                        
                          <div class="row">
                        
                         <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-calendar"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n" name="dateOfPentavalent" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Pentavalent Date" id="fname">
                                    </div>
                                </div>
                                
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group">
								       <div class="input-group-addon">
								     <i class="fa fa-calendar"></i>
								        
								       </div>
                                    <input type="text" class="form-control textbox-n" name="dateOfPolio" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Polio Date" id="fname">
                                    </div>
                                </div>
                        
                        </div>
                            
                          
                            
                            <div class="row">
                             
                              <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-tablet"></i> </div>
                                <select class="form-control" name="vitaminA">
                                    <option>Vitamin A</option>
                                      <option>Yes</option>
                                      <option>No</option>
                                </select>
                                </div>
                            </div>
                            
                             <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-tablet"></i> </div>
                                <select class="form-control" name="adbandazol">
                                    <option>Adbandazol</option>
                                      <option>Yes</option>
                                      <option>No</option>
                                </select>
                                </div>
                            </div>
                            </div>
                             
                            <div class="col-md-3"></div>
                             <button type="button" class="btn btn-previous">Previous</button>
                            <button type="submit" class="btn" onClick="return confirm('Are you sure you want to submit?')">Submit</button>
                        
                        </div>
                    </fieldset>
                       
                </form>
            </div>
        </div>
   			

<script>
$(document).ready(function () {
    $('.registration-form fieldset:first-child').fadeIn('slow');

    $('.registration-form input[type="text"]').on('focus', function () {
        $(this).removeClass('input-error');
    });

    // next step
    $('.registration-form .btn-next').on('click', function () {
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;
		
        parent_fieldset.find('input[type="text"],input[type="email"]').each(function () {
            if ($(this).val() == "") {
                $(this).addClass('input-error');
                next_step = false;
            } else {
                $(this).removeClass('input-error');
            }
        });

        if (next_step) {
            parent_fieldset.fadeOut(400, function () {
                $(this).next().fadeIn();
            });
        }

    });

    // previous step
    $('.registration-form .btn-previous').on('click', function () {
        $(this).parents('fieldset').fadeOut(400, function () {
            $(this).prev().fadeIn();
        });
    });

    // submit
    $('.registration-form').on('submit', function (e) {

        $(this).find('input[type="text"],input[type="email"]').each(function () {
            if ($(this).val() == "") {
                e.preventDefault();
                $(this).addClass('input-error');
            } else {
                $(this).removeClass('input-error');
            }
        });

    });

   
});</script>
              <div class="clearfix"></div>
           
						</div>


					</div>
									
				</div>		
			</div>
				
    </section>
	
</div>

<a href="nurseRegistration.jsp" style="background-color:#4acdd1;" class="btn btn-primary" style="font-size:28px;margin-top:-43px;">Back </a>


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
