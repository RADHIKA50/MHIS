<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%
String LdId = request.getParameter("LdId");
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
String sql ="select * from landd where LdId="+LdId;
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
if((request.getSession(false).getAttribute("Doctor")== null) )
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
  <jsp:include page="doctorNav.jsp"></jsp:include>
  </div>
  
  
</div>

				<script src="../js/jquery-1.11.3.min.js"></script> 
				
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
				<div class="row">
					<div class="col-lg-12">
					
					
						<div class="container well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						
  <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="text-center" style="color:#4acdd1">LABOR AND DELIVERY DETAILS</h3>
          
        </div>
        
       
       <div class="panel-body">
           
            <table class="table table-bordered col-md-12" style="font-weight:bold; font-size:18px;">
            <div class="col-md-12">
            
                  <tbody>    
              
                     <tr >
                        <td style="color:#4acdd1">Report Name</td>
                        <td><%= resultSet.getString("reportName") %> </td>
                     
                        <td style="color:#4acdd1">Mother</td>
                        <td><%= resultSet.getString("mother") %> </td>
                     </tr>
                     <tr>
                        <td style="color:#4acdd1">Address</td>
                        <td><%= resultSet.getString("address") %></td>
                   		 <td style="color:#4acdd1">Date Of Birth</td>
                     	<td><%= resultSet.getString("dob") %></td>
                      </tr>
                         <tr>
                         <td style="color:#4acdd1">Card Number Date</td>
                           <td><%= resultSet.getString("cardNoDate") %></td>
                            <td style="color:#4acdd1">Hospitalizationr</td>
                             <td><%= resultSet.getString("hospitalization") %></td>
                           </tr>
                                          
                           <tr>
                           <td style="color:#4acdd1">Delivery Date</td>
                               <td><%= resultSet.getString("deliveryDate") %></td>
                                <td style="color:#4acdd1">Labor Pain</td>
                                <td><%= resultSet.getString("laborPain") %></td>
                               </tr>
                                 <tr><td style="color:#4acdd1">Delivery Place</td>
                                     <td><%= resultSet.getString("deliveryPlace") %></td>
                                     <td style="color:#4acdd1">Pregnancy Problem</td>
                        			<td><%= resultSet.getString("pregnacyProblem") %></td>
                     				</tr>
                    				 <tr>
                        			<td style="color:#4acdd1">Pregnancy Result</td>
                                   	<td><%= resultSet.getString("pregnacyResults") %></td>
                                    <td style="color:#4acdd1">APGAR SCORE ID</td>
                                    <td><%= resultSet.getString("apgarScoreId") %></td>
                                   </tr>
                    
                     <tr>
                        <td style="color:#4acdd1">Delivery Method</td>
                                                <td><%= resultSet.getString("DeliveryMethod") %></td>
                               
                        <td style="color:#4acdd1">Baby Gender</td>
                        <td> <%= resultSet.getString("babyGender") %></td>
                     </tr>
                     
                      <tr>
                        <td style="color:#4acdd1">HBB</td>
                        <td> <%= resultSet.getString("hbb") %></td>
                    
                        <td style="color:#4acdd1">Baby Weight</td>
                        <td> <%= resultSet.getString("babyWeight") %></td>
                     </tr>
                      <tr>
                        <td style="color:#4acdd1">FSB</td>
                        <td> <%= resultSet.getString("fsb") %></td>
                     
                        <td style="color:#4acdd1">MSB</td>
                        <td> <%= resultSet.getString("msb") %></td>
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
