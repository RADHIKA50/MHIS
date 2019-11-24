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
                <form role="form" class="registration-form" action="nursePersonalregistration.jsp" method="post" name="myForm" onsubmit="return validateForm()">
                    <fieldset>
                        <div class="form-top" style="padding-top:23px;">
                            <div class="form-top-center">
                                <h3><span><i class="fa fa-calendar" aria-hidden="true"></i></span> <b> PERSONAL DETAILS:</b></h3>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <div class="row">
                               
                                <div class="form-group col-md-12 col-sm-12">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="fullName" placeholder="Full Name" id="lname">
                                    </div>
                                </div>
                            </div>
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="husband" placeholder="Husband" id="fname">
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
                                    <input type="text" class="form-control textbox-n" name="dob" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Birthdate" id="fname">
                                    </div>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                <div class="input-group"><div class="input-group-addon"><i class="fa fa-envelope"></i> </div>
                                    <input type="email" class="form-control" name="email" placeholder="Email" id="lname">
                                    </div>
                                </div>
                            </div>
                         
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                  <div class="input-group"><div class="input-group-addon"><i class="fa fa-phone"></i> </div>
                                    <input type="text" class="form-control" name="phoneNumber" placeholder="Phone Number" id="contact_number">
                                    </div>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                  <div class="input-group"><div class="input-group-addon"><i class="fa fa-phone"></i> </div>
                                    <input type="text" class="form-control" name="optPhoneNumber" placeholder="Phone Number(Optional)" id="contact_number">
                                    </div>
                                </div>
                            </div>
                           
							<div class="row">
                            <div class="form-group col-md-6 col-sm-6">
                              <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                <select class="form-control" name="status">
                                    <option>Marital Status</option>
                                    <option>Single</option>
                                    <option>Married</option>
                                </select>
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                                  <div class="input-group"><div class="input-group-addon"><i class="fa fa-credit-card"></i> </div>
                                    <input type="text" class="form-control" name="adharNumber" placeholder="Adhar Number" id="contact_number">
                                    </div>
                                </div>
                                </div>
                            
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset><!-- /Personal Details -->
                    <fieldset>
                        <div class="form-top">
                            <div class="form-top-left" style="padding-top:23px;">
                                <h3><span><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>Previous Pregnancy Details:</h3>
                               
                            </div>
                        </div>
                        
                        <div class="form-bottom">
                        
                         <div class="form-group">
                         <div class="input-group"><div class="input-group-addon"><i class="fa fa-info"></i> </div>
                                <input type="text" name="prePregnancyDescription" class="form-control" placeholder="Previous Pregancy Description" id="pref_date" >
                                </div>
                            </div>
                            
                           <div class="form-group col-md-4 col-sm-4">
                           <input type="text" name="pregnancylossnum" class="form-control" placeholder="pregnancy loss No." id="pref_date" >
                                
                                    </div>
                                    <div class="form-group col-md-4 col-sm-4">
                                           <div class="input-group"><div class="input-group-addon"><i class="fa fa-birthday-cake"></i> </div>
                                    <input type="text" class="form-control" name="lastchildage" placeholder="Last Child Age" >
                                    </div>
                                    </div>
                                    <div class="form-group col-md-4 col-sm-4">
                                        <select class="form-control" name="surgicaldelivery">
                                            <option>Surgical Delivery</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                            
                                        </select>
                                    </div>
                            <div class="form-group">
                            <div class="input-group"><div class="input-group-addon"><i class="fa fa-hospital-o"></i> </div>
                                <select class="form-control" name="placedelivered">
                               
                                    <option>Place you Delivered last pregnance</option>
                                    <option>Sangvi</option>
                                    <option>shivajinagar</option>
                                    <option>pimple gaurav</option>
                                    <option>bhavdhan</option>
                                    <option>kundhwa</option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>
                     <fieldset>
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><span><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>Measurements:</h3>
                               
                            </div>
                        </div>
                        
                        <div class="form-bottom">
                        
                         <div class="form-group">
                         <div class="input-group"><div class="input-group-addon"><i class="fa fa-calendar"></i> </div>
                                <input type="text" class="form-control textbox-n" name="dateOfRegistration" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="Registration Date" id="pref_date">
                                </div>
                            </div>
                            
                           <div class="form-group col-md-3 col-sm-3">
                           <div class="input-group"><div class="input-group-addon"><i class="fa fa-ruler"></i> </div>
                                       <input type="text" class="form-control" name="height"  placeholder="Height (ft)" id="pref_date">
                                
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3 col-sm-3">
                                    <div class="input-group"><div class="input-group-addon"><i class="fa fa-weight"></i> </div>
                                        <input type="text" class="form-control" name="weight"  placeholder="Weight (kg)" id="pref_date">
                                
                                        </div>
                                    </div>
                                     <div class="form-group col-md-5 col-sm-5">
                                     <div class="input-group"><div class="input-group-addon"><i class="fa fa-calendar"></i> </div>
                               <input type="text" class="form-control" name="pregnantyear"  placeholder="pregnant year" id="pref_date">
                                 
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                                 <input type="text" class="form-control" name="WeeklyPregnentAge"  placeholder="Weekly Pregnent Age" id="pref_date">
                                
                            </div>
                              <div class="form-group col-md-6 col-sm-6">
                                <input type="text" class="form-control" name="pregnancyage"  placeholder="pregnancy age" id="pref_date">
                                
                            </div>
                            <div class="col-md-3"></div>
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>
                        <fieldset>
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><span><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span> Lab & Medicine</h3>
                                
                            </div>
                        </div>
                        <div class="form-bottom">
                                
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="TT1vaccinationdate" value="TT1"> TT1<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="TT2VaccinationDate" value="TT2"> TT2<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="bp" value="BP"> BP<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="tb" value="TB"> TB<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="syphilistest" value="Syphilis Test"> Syphilis Test<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="malariatest" value="malaria Test"> Malaria Test<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="wormsmedicine" value="BP"> Worm Medicine<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="hivinfectiontest" value="HIV"> HIV Infect Test<br>
                                
                            </div>
                            <div class="form-group">
                            <div class="form-group col-md-6 col-sm-6">
                            <div class="input-group"><div class="input-group-addon"><i class="fa fa-calendar"></i> </div>
                                <input type="date" name="hivdatetest" class="form-control textbox-n" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="HIV Test Date" id="pref_date">
                            </div>
                            </div>
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                                <select class="form-control" name="bloodgroup">
                                    <option>Blood Group</option>
                                    <option>A</option>
                                    <option>A+</option>
                                    <option>B</option>
                                    <option>B+</option>
                                    <option>AB</option>
                                    <option>AB+</option>
                                    <option>O</option>
                                    <option>O+</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                                <select class="form-control" name="hivresult">
                                    <option>HIV result</option>
                                    <option>positive</option>
                                    <option>negative</option>
                                 </select>
                            </div>
                             <div class="form-group col-md-6 col-sm-6">
                               <input type="text" class="form-control" name="urinesugaramount"  placeholder="urine sugar amount" id="pref_date">
                                
                            </div>
                             <div class="form-group col-md-6 col-sm-6">
                                
                                <select class="form-control" name="fataken">
                                    <option>FA Taken</option>
                                    <option>00</option>
                                    <option>01</option>
                                    <option>02</option>
                                </select>
                            </div>
                             <div class="form-group col-md-6 col-sm-6">
                                <select class="form-control" name="ifataken">
                                    <option>IFA Taken</option>
                                    <option>00</option>
                                    <option>01</option>
                                    <option>02</option>
                                </select>
                            </div>
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
