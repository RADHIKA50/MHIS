package com.controller;

import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import com.model.LoginBean;
import com.model.LoginDao;
 
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginServlet() {
}
 
/**
 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	response.getWriter().append("Served at: ").append(request.getContextPath());
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
 String userName = request.getParameter("username");
 String password = request.getParameter("password");
 String position = request.getParameter("position");
 String fullName = request.getParameter("fullName");
 LoginBean loginBean = new LoginBean();
 
 loginBean.setUserName(userName);
 loginBean.setPassword(password);
 loginBean.setPosition(fullName);
 
 LoginDao loginDao = new LoginDao();
 
 try
 {
 String userValidate = loginDao.authenticateUser(loginBean);
 
 if(userValidate.equals("Admin_Role"))
 {
 System.out.println("Admin's Home");
 
 HttpSession session = request.getSession(); //Creating a session
 session.setAttribute("Admin", userName); //setting session attribute
 request.setAttribute("userName", userName);
 
 request.getRequestDispatcher("pages/admin.jsp").forward(request, response);
 }
 else if(userValidate.equals("Doctor_Role"))
 {
 System.out.println("Doctor's Home");
 
 HttpSession session = request.getSession();
 session.setAttribute("Doctor", userName);
 request.setAttribute("userName", userName);
 
 request.getRequestDispatcher("/pages/doctor.jsp").forward(request, response);
 }
 else if(userValidate.equals("Nurse_Role"))
 {
 System.out.println("Nurse's Home");
 
 HttpSession session = request.getSession();
 session.setMaxInactiveInterval(10*60);
 session.setAttribute("Nurse", userName);
 request.setAttribute("userName", userName);
 
 request.getRequestDispatcher("pages/nurse.jsp").forward(request, response);
 }
 else if(userValidate.equals("Maternity_Incharge_Role"))
 {
 System.out.println("MaternityIncharge's Home");
 
 HttpSession session = request.getSession();
 session.setMaxInactiveInterval(10*60);
 session.setAttribute("Maternity Incharge", userName);
 request.setAttribute("userName", userName);
 
 request.getRequestDispatcher("pages/maternityInCH.jsp").forward(request, response);
 }
 else
 {
 System.out.println("Error message = "+userValidate);
 request.setAttribute("errMessage", userValidate);
 
 request.getRequestDispatcher("index.jsp").forward(request, response);
 }
 }
 catch (IOException e1)
 {
 e1.printStackTrace();
 }
 catch (Exception e2)
 {
 e2.printStackTrace();
 }
} //End of doPost()
}
