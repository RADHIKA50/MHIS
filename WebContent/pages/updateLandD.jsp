<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>


    <%
    String LdId = request.getParameter("hid");
    
    String reportName = request.getParameter("reportName");    
    String mother = request.getParameter("mother");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String cardNoDate = request.getParameter("cardNoDate");
    String babyGender = request.getParameter("babyGender");
    String hospitalization = request.getParameter("hospitalization");
    String deliveryDate = request.getParameter("deliveryDate");
	String laborPain = request.getParameter("laborPain");
    String pregnacyProblem = request.getParameter("pregnacyProblem");
    String deliveryPlace = request.getParameter("deliveryPlace");
    String DeliveryMethod = request.getParameter("DeliveryMethod");
    String pregnacyResults = request.getParameter("pregnacyResults");
    int apgarScoreId = Integer.parseInt(request.getParameter("apgarScoreId"));
    String hbb = request.getParameter("hbb");
    String babyWeight = request.getParameter("babyWeight");
    String fsb = request.getParameter("fsb");
    String msb = request.getParameter("msb");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
    	Statement stat = con.createStatement();
    	String query="update landd set reportName='"+reportName+"',mother='"+mother+"',dob='"+dob+"',address='"+address+"',cardNoDate='"+cardNoDate+"',babyGender='"+babyGender+"',hospitalization='"+hospitalization+"',deliveryDate='"+deliveryDate+"',laborPain='"+laborPain+"',pregnacyProblem='"+pregnacyProblem+"',deliveryPlace='"+deliveryPlace+"',DeliveryMethod='"+DeliveryMethod+"',pregnacyResults='"+pregnacyResults+"',apgarScoreId='"+apgarScoreId+"',hbb='"+hbb+"',babyWeight='"+babyWeight+"',fsb='"+fsb+"',msb='"+msb+"' where LdId="+LdId;

    	int i= stat.executeUpdate(query);
    	if(i==1)
    	{
    		response.sendRedirect("nurseView.jsp");
    		//out.println("Update");
    		
    	} else{
    		response.sendRedirect("editLAndDDetails.jsp");
    		//out.println("Not updated");
    	}
    	}
    catch(Exception e){
    	
    	out.println(e);
    }
    
    
    
    %>
