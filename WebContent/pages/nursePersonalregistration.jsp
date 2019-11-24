<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
//int motherId = Integer.parseInt(request.getParameter("motherId"));
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

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into anc (fullName,husband,dateOfRegistration,address,dob,email,PhoneNumber,optPhoneNumber,status,pregnancylossnum,lastchildage,surgicaldelivery,placedelivered,height,weight,pregnantyear,WeeklyPregnentAge,TT1vaccinationdate,TT2VaccinationDate,bp,tb,syphilistest,malariatest,wormsmedicine,hivinfectiontest,urinesugaramount,fataken,ifataken,prePregnancyDescription,pregnancyage,bloodgroup,hivdatetest,hivresult,adharNumber ) values ('" + fullName + "','" + husband + "','" + dateOfRegistration + "','" + address + "','" + dob + "','" + email + "','" + phoneNumber + "','" + optPhoneNumber + "','" + status + "','" + pregnancylossnum +"','" + lastchildage + "','" + surgicaldelivery + "','" + placedelivered + "','" + height + "','" + weight + "','" + pregnantyear + "','" +  WeeklyPregnentAge + "','" + TT1vaccinationdate + "','" + TT2VaccinationDate + "','" + bp + "','" + tb + "','" + syphilistest + "','" + malariatest + "','" + wormsmedicine + "','" + prePregnancyDescription +"','" + hivinfectiontest + "','" + urinesugaramount + "','" + fataken + "','" + ifataken + "','"
    +pregnancyage+"','"+bloodgroup+"','"+hivdatetest+"','"+hivresult+"','"+adharNumber+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("ancView.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("nurseRegistrationForm.jsp");
    }
%>
</body>
</html>