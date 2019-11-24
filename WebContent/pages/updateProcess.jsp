<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>


    <%
    String uid = request.getParameter("hid");
    
    String username = request.getParameter("username");    
    String password= request.getParameter("password");
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String position = request.getParameter("position");
    String dob = request.getParameter("dob");
    String maritalStatus = request.getParameter("maritalStatus");
    int adharNumber = Integer.parseInt(request.getParameter("adharNumber"));
    String gender = request.getParameter("gender");
    String phoneNumber = request.getParameter("phoneNumber");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
    	Statement stat = con.createStatement();
    	String query="update users set fullName='"+fullName+"',username='"+username+"',password='"+password+"',email='"+email+"',address='"+address+"',position='"+position+"',dob='"+dob+"',maritalStatus='"+maritalStatus+"',adharNumber='"+adharNumber+"',phoneNumber='"+phoneNumber+"',gender='"+gender+"' where uid="+uid;

    	int i= stat.executeUpdate(query);
    	if(i==1)
    	{
    		response.sendRedirect("adminView.jsp");
    		//out.println("Update");
    		
    	} else{
    		response.sendRedirect("update.jsp");
    		//out.println("Not updated");
    	}
    	}
    catch(Exception e){
    	
    	out.println(e);
    }
    
    
    
    %>
