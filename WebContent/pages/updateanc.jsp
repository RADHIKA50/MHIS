<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>


    <%
    String ancId = request.getParameter("hid");
    
    String fullName = request.getParameter("fullName");
    String husband = request.getParameter("husband");
    String dateOfRegistration = request.getParameter("dateOfRegistration");
    String address = request.getParameter("address");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");

    String phoneNumber = request.getParameter("phoneNumber");
    String optPhoneNumber = request.getParameter("optPhoneNumber");
    String status = request.getParameter("status");

    int pregnancylossnum = Integer.parseInt(request.getParameter("pregnancylossnum"));
    int lastchildage  = Integer.parseInt(request.getParameter("lastchildage"));

    String surgicaldelivery = request.getParameter("surgicaldelivery");
    String placedelivered = request.getParameter("placedelivered");
    String height = request.getParameter("height");

    String weight = request.getParameter("weight");
    String adharNumber = request.getParameter("adharNumber");
    int pregnantyear = Integer.parseInt(request.getParameter("pregnantyear"));
    int WeeklyPregnentAge = Integer.parseInt(request.getParameter("WeeklyPregnentAge"));

    String TT1vaccinationdate = request.getParameter("TT1vaccinationdate");
    String TT2VaccinationDate = request.getParameter("TT2VaccinationDate");
    String bp = request.getParameter("bp");
    String tb = request.getParameter("tb");
    String syphilistest = request.getParameter("syphilistest");
    String malariatest = request.getParameter("malariatest");
    String wormsmedicine = request.getParameter("wormsmedicine");
    String hivinfectiontest = request.getParameter("hivinfectiontest");
    String urinesugaramount = request.getParameter("urinesugaramoun");
    String fataken = request.getParameter("fataken");
    String ifataken = request.getParameter("ifataken");
    String prePregnancyDescription = request.getParameter("prePregnancyDescription");
    int pregnancyage  = Integer.parseInt(request.getParameter("pregnancyage"));

    String bloodgroup = request.getParameter("bloodgroup");
    String hivdatetest = request.getParameter("hivdatetest");
    String hivresult = request.getParameter("hivresult");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
    	Statement stat = con.createStatement();
    	String query="update anc set fullName='" + fullName + "',husband='" + husband + "',dateOfRegistration='" + dateOfRegistration + "',address='" + address + "',dob='" + dob + "',email='" + email + "',phoneNumber='" + phoneNumber + "',optPhoneNumber='" + optPhoneNumber + "',status='" + status + "',pregnancylossnum='" + pregnancylossnum +"',lastchildage='" + lastchildage + "',surgicaldelivery='" + surgicaldelivery + "',placedelivered='" + placedelivered + "',height='" + height + "',weight='" + weight + "',pregnantyear='" + pregnantyear + "',WeeklyPregnentAge='" +  WeeklyPregnentAge + "',TT1vaccinationdate='" + TT1vaccinationdate + "',TT2VaccinationDate='" + TT2VaccinationDate + "',bp='" + bp + "',tb='" + tb + "',syphilistest='" + syphilistest + "',malariatest='" + malariatest + "',wormsmedicine='" + wormsmedicine + "',prePregnancyDescription='" + prePregnancyDescription +"',hivinfectiontest='" + hivinfectiontest + "',urinesugaramount='" + urinesugaramount + "',fataken='" + fataken + "',ifataken='" + ifataken + "',pregnancyage='"
    		    +pregnancyage+"',bloodgroup='"+bloodgroup+"',hivdatetest='"+hivdatetest+"',hivresult='"+hivresult+"',adharNumber='"+adharNumber+"' where ancId="+ancId;

    	int i= stat.executeUpdate(query);
    	if(i==1)
    	{
    		response.sendRedirect("nurseView.jsp");
    		//out.println("Update");
    		
    	} else{
    		response.sendRedirect("editAncDetails.jsp");
    		//out.println("Not updated");
    	}
    	}
    catch(Exception e){
    	
    	out.println(e);
    }
    
    
    
    %>
