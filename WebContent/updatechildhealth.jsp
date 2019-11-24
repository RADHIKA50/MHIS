<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>


    <%
    String chId = request.getParameter("hid");
    
    String babyName = request.getParameter("babyName");
    String mother = request.getParameter("mother");
    String address = request.getParameter("address");
    String dobBaby = request.getParameter("dobBaby");
    String babyID = request.getParameter("babyID");

    String dateOfChildAttend = request.getParameter("dateOfChildAttend");
    String dateOfPCV = request.getParameter("dateOfPCV");
    String dateOfRotta = request.getParameter("dateOfRotta");

    String dateOfPentavalent =request.getParameter("dateOfPentavalent");
    String dateOfPolio = request.getParameter("dateOfPolio");
    String vitaminA = request.getParameter("vitaminA");
    String adbandazol = request.getParameter("adbandazol");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
    	Statement stat = con.createStatement();
    	String query="update childhealth set babyName='" + babyName + "',babyID='" + babyID + "',address='" + address + "',dobBaby='" + dobBaby + "',mother='" + mother +"', dateOfChildAttend='" + dateOfChildAttend + "',dateOfPCV='" + dateOfPCV + "',dateOfRotta='" + dateOfRotta + "',dateOfPentavalent='" +dateOfPentavalent + "',dateOfPolio='"+dateOfPolio+"',vitaminA='" + vitaminA + "',adbandazol='" +  adbandazol + "' where chId="+chId;

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
