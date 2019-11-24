<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%
String uId = request.getParameter("d");
int no =Integer.parseInt(uId);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis","root","");
Statement stat= conn.createStatement();
stat.executeUpdate("delete from users where uId='"+no+"'");
response.sendRedirect("adminView.jsp");
%>