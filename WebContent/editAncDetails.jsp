<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%
String ancid = request.getParameter("ancId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mhis";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from anc where ancId="+ancid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

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
					

        <div class="col-md-offset-2">
            <div class="col-md-10 form-box" >
                <form role="form" class="registration-form" action="updateanc.jsp" method="post">
                    <fieldset>
                    
								 <input  name="hid" type="hidden"  class="form-control input-md" value="<%=resultSet.getInt("ancId") %>">
                        <div class="form-top">
                            <div class="form-top-center">
                                <h3><span><i class="fa fa-calendar" aria-hidden="true"></i></span> Personal Details:</h3>
                            </div>
                        </div>
                         
                        <div class="form-bottom">
                            <div class="row">
                                
                                <div class="form-group col-md-12 col-sm-12">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="fullName" Placeholder="Mother Name" value="<%=resultSet.getString("fullName") %>" id="lname">
                                </div>
                                </div>
                            </div>
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                    <input type="text" class="form-control" name="husband"  Placeholder="husband"  value="<%=resultSet.getString("husband") %>" id="fname">
                                </div>
                                </div>
                               
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-map-marker"></i> </div>
                                <input type="text" class="form-control" name="address"  Placeholder="Address"  value="<%=resultSet.getString("address") %>" id="fname">
                               </div>
                            </div>
                            </div>
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-birthday-cake"></i> </div>
                                    <input type="date" class="form-control" name="dob"  Placeholder="Date Of Birth"  value="<%=resultSet.getString("dob") %>" id="fname">
                                </div>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-envelope"></i> </div>
                                    <input type="email" class="form-control" name="email"  Placeholder="Email"  value="<%=resultSet.getString("email") %>" id="lname">
                                </div>
                                </div>
                            </div>
                         
                             <div class="row">
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-phone"></i> </div>
                                    <input type="text" class="form-control" name="phoneNumber"  Placeholder="Phone Number 1"  value="<%=resultSet.getString("phoneNumber") %>" id="contact_number">
                                </div>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                 <div class="input-group"><div class="input-group-addon"><i class="fa fa-phone"></i> </div>
                                    <input type="text" class="form-control" name="optPhoneNumber" Placeholder="Phone Number 2" value="<%=resultSet.getString("optPhoneNumber") %>" id="contact_number">
                                </div>
                                </div>
                            </div>
                           

                          <div class="row">
                            <div class="form-group col-md-6 col-sm-6">
                            
                              <div class="input-group"><div class="input-group-addon"><i class="fa fa-user"></i> </div>
                                <input type="text" class="form-control" name="status"  Placeholder="Marital Status"  value="<%=resultSet.getString("status") %>" id="fname">
                             
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                                  <div class="input-group"><div class="input-group-addon"><i class="fa fa-credit-card"></i> </div>
                                    <input type="text" class="form-control" Placeholder="Adhar Number" name="adharNumber" value="<%=resultSet.getString("adharNumber") %>" id="contact_number">
                                    </div>
                                </div>
                                </div>
                            
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset><!-- /Personal Details -->
                    <fieldset>
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><span><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>Previous Pregnancy Details:</h3>
                               
                            </div>
                        </div>
                        
                        <div class="form-bottom">
                        
                         <div class="form-group">
                                <input type="text" name="prePregnancyDescription" class="form-control" Placeholder="Previous Pregnancy Description"  value="<%=resultSet.getString("prePregnancyDescription") %>" id="pref_date" >
                            </div>
                            
                           <div class="form-group col-md-4 col-sm-4">
                           <input type="text" name="pregnancylossnum" class="form-control" Placeholder="Pregnancy loss No." value="<%=resultSet.getString("pregnancylossnum") %>" id="pref_date" >
                            
                                    </div>
                                    <div class="form-group col-md-4 col-sm-4">
                                    <input type="text" name="lastchildage" class="form-control" Placeholder="last child age" value="<%=resultSet.getString("lastchildage") %>" id="pref_date" >
                            
                                    </div>
                                    <div class="form-group col-md-4 col-sm-4">
                                    <input type="text" name="surgicaldelivery" class="form-control" Placeholder="surgical delivery?" value="<%=resultSet.getString("surgicaldelivery") %>" id="pref_date" >
                            
                                    </div>
                            <div class="form-group">
                            <input type="text" name="placedelivered" class="form-control" Placeholder="place delivered" value="<%=resultSet.getString("placedelivered") %>" id="pref_date" >
                            
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
                                <input type="date" class="form-control" name="dateOfRegistration" placeholder="Registration Date" onfocus="(this.type='date')" onblur="(this.type='text')" value="<%=resultSet.getString("dateOfRegistration") %>" id="pref_date">
                            </div>
                            
                           <div class="form-group col-md-3 col-sm-3">
                           <input type="text" class="form-control" name="height" placeholder="Height" value="<%=resultSet.getString("height") %>" id="pref_date">
                                      
                                    </div>
                                    <div class="form-group col-md-3 col-sm-3">
                                    <input type="text" class="form-control" name="weight" placeholder="Weight" value="<%=resultSet.getString("weight") %>" id="pref_date">
                              
                                    </div>
                                     <div class="form-group col-md-5 col-sm-5">
                                     <input type="text" class="form-control" name="pregnantyear" placeholder="Pregnant year" value="<%=resultSet.getString("pregnantyear") %>" id="pref_date">
                              
                            </div>
                            <div class="form-group col-md-6 col-sm-6">
                            <input type="text" class="form-control" name="WeeklyPregnentAge" placeholder="Weekly Pregnent Age" value="<%=resultSet.getString("WeeklyPregnentAge") %>" id="pref_date">
                              
                            </div>
                              <div class="form-group col-md-6 col-sm-6">
                               <input type="text" class="form-control" name="pregnancyage" placeholder="pregnancy age" value="<%=resultSet.getString("pregnancyage") %>" id="pref_date">
                                                          </div>
                            
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
                                <input type="checkbox" name="TT1vaccinationdate" value="<%=resultSet.getString("TT1vaccinationdate") %>"> TT1<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="TT2VaccinationDate" value="<%=resultSet.getString("TT2VaccinationDate") %>"> TT2<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="bp" value="<%=resultSet.getString("bp") %>"> BP<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="tb" value="<%=resultSet.getString("tb") %>"> TB<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="syphilistest" value="<%=resultSet.getString("syphilistest") %>"> Syphilis Test<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="malariatest" value="<%=resultSet.getString("malariatest") %>"> Malaria Test<br>
                                
                            </div>
                            <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="wormsmedicine" value="<%=resultSet.getString("wormsmedicine") %>"> Worm Medicine<br>
                                
                            </div>
                             <div class="form-group col-md-3 col-sm-3">
                                <input type="checkbox" name="hivinfectiontest"value="<%=resultSet.getString("hivinfectiontest") %>"> HIV Infect Test<br>
                                
                            </div>
                            <div class="row">
                            <div class="form-group col-md-4 col-sm-4">
                                <input type="date" name="hivdatetest" class="form-control" Placeholder="HIV Date Test" onfocus="(this.type='date')" onblur="(this.type='text')" value="<%=resultSet.getString("hivdatetest") %>" id="pref_date">
                            </div>
                            <div class="form-group col-md-4 col-sm-4">
                            <input type="text" class="form-control" name="bloodgroup" placeholder="blood Group" value="<%=resultSet.getString("bloodgroup") %>" id="pref_date">
                               
                            </div>
                            <div class="form-group col-md-4 col-sm-4">
                             <input type="text" class="form-control" name="hivresult" placeholder="hiv result" value="<%=resultSet.getString("hivresult") %>" id="pref_date">
                             
                            </div>
                            </div>
                               <div class="row">
                             <div class="form-group col-md-4 col-sm-4">
                               <input type="text" class="form-control" name="urinesugaramount" placeholder="urine sugar amount" value="<%=resultSet.getString("urinesugaramount") %>" id="pref_date">
                             
                            </div>
                             <div class="form-group col-md-4 col-sm-4">
                                 <input type="text" class="form-control" name="fataken" placeholder="FA amount taken" value="<%=resultSet.getString("fataken") %>" id="pref_date">
                             
                            </div>
                             <div class="form-group col-md-4 col-sm-4">
                              <input type="text" class="form-control" name="ifataken" placeholder="IFA amount taken" value="<%=resultSet.getString("ifataken") %>" id="pref_date">
                             
                            </div>
                            </div>
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="submit" class="btn">Submit</button>
                        </div>
                    </fieldset>
                </form>
                <%
								}
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
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
