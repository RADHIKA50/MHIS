<%@ page import ="java.sql.*" %>
<%

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



    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis?zeroDateTimeBehavior=convertToNull",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into users(username, adharNumber, password, email, fullName, phoneNumber, position, dob, address, gender, maritalStatus) values ('" + username + "','" + adharNumber + "','" + password + "','" + email + "','" + fullName + "','" + phoneNumber + "','" + position + "','" + dob + "','" + address + "','" + gender + "','" + maritalStatus + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../index.jsp");
       //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
       
    } else {
        response.sendRedirect("signUp.jsp");
    }
%>