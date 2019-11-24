<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>


    <%
    String pncId = request.getParameter("hid");
    
    String motherName = request.getParameter("motherName");    
    String cardNumber = request.getParameter("cardNumber");
    String address = request.getParameter("address");
    String dob = request.getParameter("dob");
    int timesGivenBirth = Integer.parseInt(request.getParameter("timesGivenBirth"));
    String deliveryDate = request.getParameter("deliveryDate");
    String deliveryPlace = request.getParameter("deliveryPlace");
    String fistulaTest = request.getParameter("fistulaTest");
	String weight = request.getParameter("weight");
    String babyVaccination = request.getParameter("babyVaccination");
    String babyTemperature = request.getParameter("babyTemperature");
    String haemoglobin = request.getParameter("haemoglobin");
    String KMC = request.getParameter("KMC");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
    	Statement stat = con.createStatement();
    	String query="update pnc set motherName='"+motherName+"',cardNumber='"+cardNumber+"',address='"+address+"',dob='"+dob+"',timesGivenBirth='"+timesGivenBirth+"',deliveryDate='"+deliveryDate+"',deliveryPlace='"+deliveryPlace+"',fistulaTest='"+fistulaTest+"',weight='"+weight+"',babyVaccination='"+babyVaccination+"',babyTemperature='"+babyTemperature+"',haemoglobin='"+haemoglobin+"',KMC='"+KMC+"' where pncId="+pncId;

    	int i= stat.executeUpdate(query);
    	if(i==1)
    	{
    		response.sendRedirect("nurseView.jsp");
    		//out.println("Update");
    		
    	} else{
    		response.sendRedirect("editPncDetails.jsp");
    		//out.println("Not updated");
    	}
    	}
    catch(Exception e){
    	
    	out.println(e);
    }
    
    
    
    %>
