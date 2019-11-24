<%@ page import ="java.sql.*" %>

<%

String motherName = request.getParameter("motherName");
String cardNumber = request.getParameter("cardNumber");
String address = request.getParameter("address");
String dob = request.getParameter("dob");
String deliveryDate = request.getParameter("deliveryDate");

String HIVTest = request.getParameter("HIVTest");
String deliveryPlace = request.getParameter("deliveryPlace");
String fistulaTest = request.getParameter("fistulaTest");
int timesGivenBirth = Integer.parseInt(request.getParameter("timesGivenBirth"));
String weight =request.getParameter("weight");
String babyTemperature = request.getParameter("babyTemperature");
String babyVaccination = request.getParameter("babyVaccination");
String haemoglobin = request.getParameter("haemoglobin");
String KMC = request.getParameter("KMC");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into pnc( motherName, cardNumber, address, dob, deliveryDate, deliveryPlace, HIVTest, fistulaTest, weight,timesGivenBirth, babyTemperature, babyVaccination, haemoglobin, KMC ) values ('" + motherName + "','" + cardNumber + "','" + address + "','" + dob + "','" + deliveryDate +"','" + deliveryPlace + "','" + HIVTest + "','" + fistulaTest + "','" + weight + "','"+timesGivenBirth+"','" + babyTemperature + "','" +  babyVaccination + "','" + haemoglobin + "','" + KMC + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("pncview.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("pncForm.jsp");
    }
%>