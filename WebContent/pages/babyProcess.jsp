<%@ page import ="java.sql.*" %>

<%

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

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into childhealth( babyName, babyID,address,dobBaby, mother, dateOfChildAttend, dateOfPCV, dateOfRotta, dateOfPentavalent,dateOfPolio, vitaminA, adbandazol) values ('" + babyName + "','" + babyID + "','" + address + "','" + dobBaby + "','" + mother +"','" + dateOfChildAttend + "','" + dateOfPCV + "','" + dateOfRotta + "','" +dateOfPentavalent + "','"+dateOfPolio+"','" + vitaminA + "','" +  adbandazol + "')");
				    if (i > 0) {
				        //session.setAttribute("userid", user);
				        response.sendRedirect("childHealthFormView.jsp");
				       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
				    } else {
				        response.sendRedirect("childHealthForm.jsp");
				    }
%>