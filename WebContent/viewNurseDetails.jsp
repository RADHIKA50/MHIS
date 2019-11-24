<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%
String ancId = request.getParameter("ancId");
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
String sql ="select * from anc where ancId="+ancId;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%><!DOCTYPE html>
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
            <h3 class="text-center" style="color:#4acdd1">ANC DETAILS</h3>
            <div class="text-right" style="padding-bottom:10px;">
                <ul class="moblist_prf">
 <li><a href='editAncDetails.jsp?ancId=<%=resultSet.getString("ancId") %>' data-original-title="Edit this user" class="btn btn-info btn-sm" type="button" >Edit</a></li> 
 </ul>
  </div>
        </div>
        
       
       <div class="panel-body">
           
            <table class="table table-bordered col-md-12" style="font-weight:bold; font-size:18px;">
            <div class="col-md-12">
                  <tbody>    
              
                     <tr >
                        <td style="color:#4acdd1">Full Name</td>
                        <td><%= resultSet.getString("fullName") %> </td>
                     
                        <td style="color:#4acdd1">Address</td>
                        <td><%= resultSet.getString("address") %> </td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">Date Of Birth</td>
                        <td><%= resultSet.getString("dob") %></td>
                   		 <td style="color:#4acdd1">Husband</td>
                     	<td><%= resultSet.getString("husband") %></td>
                      </tr>
                         <tr>
                         <td style="color:#4acdd1">Email</td>
                           <td><%= resultSet.getString("email") %></td>
                            <td style="color:#4acdd1">Phone Number</td>
                             <td><%= resultSet.getString("phoneNumber") %></td>
                           </tr>
                                          
                           <tr>
                           <td style="color:#4acdd1">Optional Phone Number</td>
                               <td><%= resultSet.getString("optPhoneNumber") %></td>
                                <td style="color:#4acdd1">Marital Status</td>
                                <td><%= resultSet.getString("status") %></td>
                               </tr>
                                 <tr><td style="color:#4acdd1">adhar Number</td>
                                     <td><%= resultSet.getString("adharNumber") %></td>
                                     <td style="color:#4acdd1">Registration Date</td>
                        			<td><%= resultSet.getString("dateOfRegistration") %></td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">Previous Pregnance Description</td>
                                                <td><%= resultSet.getString("prePregnancyDescription") %></td>
                                             <td style="color:#4acdd1">Place Of Delivery</td>
                                          <td><%= resultSet.getString("placeDelivered") %></td>
                                          </tr>
                    
                     <tr>
                        <td style="color:#4acdd1">TT1 Vaccination Date</td>
                                                <td><%= resultSet.getString("TT1vaccinationdate") %></td>
                               
                        <td style="color:#4acdd1">TT2 Vaccination Date</td>
                        <td> <%= resultSet.getString("TT2VaccinationDate") %></td>
                     </tr>
                     
                      <tr>
                        <td style="color:#4acdd1">Weekly Pregnance Age</td>
                        <td> <%= resultSet.getString("WeeklyPregnentAge") %></td>
                    
                        <td style="color:#4acdd1">Height</td>
                        <td> <%= resultSet.getString("height") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Weight</td>
                        <td> <%= resultSet.getString("weight") %></td>
                     
                        <td style="color:#4acdd1">TB</td>
                        <td> <%= resultSet.getString("tb") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Blood Pressure</td>
                        <td> <%= resultSet.getString("bp") %></td>
                   
                        <td style="color:#4acdd1">Surgical Delivery</td>
                        <td> <%= resultSet.getString("surgicaldelivery") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Urine Sugar Amount</td>
                        <td> <%= resultSet.getString("urinesugaramount") %></td>
                   
                        <td style="color:#4acdd1">Syphilis Test</td>
                        <td> <%= resultSet.getString("syphilistest") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Last Child Age</td>
                        <td> <%= resultSet.getString("lastchildage") %></td>
                    
                        <td style="color:#4acdd1">Pregnancy Age</td>
                        <td> <%= resultSet.getString("pregnancyage") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Pregnancy Loss Number</td>
                        <td> <%= resultSet.getString("pregnancylossnum") %></td>
                     
                        <td style="color:#4acdd1">Pregnant Year</td>
                        <td> <%= resultSet.getString("pregnantyear") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Blood Group</td>
                        <td> <%= resultSet.getString("bloodgroup") %></td>
                    
                        <td style="color:#4acdd1">HIV Infection Test</td>
                        <td> <%= resultSet.getString("hivinfectiontest") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">HIV Date Test</td>
                        <td> <%= resultSet.getString("hivdatetest") %></td>
                    
                        <td style="color:#4acdd1">HIV Result</td>
                        <td> <%= resultSet.getString("hivresult") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Malaria Testr</td>
                        <td> <%= resultSet.getString("malariatest") %></td>
                    
                        <td style="color:#4acdd1">FA Taken</td>
                        <td> <%= resultSet.getString("fataken") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">IFA Taken</td>
                        <td> <%= resultSet.getString("ifataken") %></td>
                   
                        <td style="color:#4acdd1">Worms Medicine</td>
                        <td> <%= resultSet.getString("wormsmedicine") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">Tuberculosis</td>
                        <td> <%= resultSet.getString("tb") %></td>
                     </tr>
                     
                     
                    
                  </tbody>
                </div>
               </table>
                  <%
								}
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%> 
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
