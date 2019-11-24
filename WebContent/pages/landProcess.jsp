<%@ page import ="java.sql.*" %>

<%

String reportName = request.getParameter("reportName");
String mother = request.getParameter("mother");
String address = request.getParameter("address");
String dob = request.getParameter("dob");
String deliveryDate = request.getParameter("deliveryDate");

String cardNoDate = request.getParameter("cardNoDate");
String deliveryPlace = request.getParameter("deliveryPlace");
String hospitalization = request.getParameter("hospitalization");
int apgarScoreId = Integer.parseInt(request.getParameter("apgarScoreId"));
String laborPain =request.getParameter("laborPain");
String pregnacyProblem = request.getParameter("pregnacyProblem");
String pregnacyResults = request.getParameter("pregnacyResults");
String DeliveryMethod = request.getParameter("DeliveryMethod");
String babyGender = request.getParameter("babyGender");
String babyWeight = request.getParameter("babyWeight");
String hbb = request.getParameter("hbb");
String fsb = request.getParameter("fsb");
String msb = request.getParameter("msb");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into landd( reportName, mother, address, dob, cardNoDate, hospitalization, deliveryDate, laborPain,deliveryPlace, pregnacyProblem,pregnacyResults, apgarscoreId, DeliveryMethod,babyGender,hbb, babyWeight, fsb, msb ) values ('" + reportName + "','" + mother + "','" + address + "','" + dob + "','" + cardNoDate +"','" + hospitalization +"','" + deliveryDate +"','" + laborPain +"','" + deliveryPlace + "','" + pregnacyProblem + "','" + pregnacyResults + "','" + apgarScoreId + "','"+DeliveryMethod+"','" + babyGender + "','" +  hbb + "','" + babyWeight + "','" + fsb + "','" + msb +"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("lAndDFormView.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("lAndDForm.jsp");
    }
%>