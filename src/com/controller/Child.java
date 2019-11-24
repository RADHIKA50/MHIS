package com.controller;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Child extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Child() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			out.println("cant load database driver");
			return;
		}
		
		    Connection con;
			try {
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhis",
				        "root", "");
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
				/*
				 Statement st = con.createStatement();
				    //ResultSet rs;
				    int i = st.executeUpdate("insert into childhealth( babyName, address, babyID,dobBaby, mother, dateOfChildAttend, dateOfPCV, dateOfRotta, dateOfPentavalent,dateOfPolio, vitaminA, adbandazol) values ('" + babyName + "','" + babyID + "','" + address + "','" + dobBaby + "','" + mother +"','" + dateOfChildAttend + "','" + dateOfPCV + "','" + dateOfRotta + "','" +dateOfPentavalent + "','"+dateOfPolio+"','" + vitaminA + "','" +  adbandazol + "'");
				    if (i > 0) {
				        //session.setAttribute("userid", user);
				        response.sendRedirect("childHealthForm.jsp");
				        out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
				    } else {
				        response.sendRedirect("childHealthForm.jsp");
				    }*/
				
				String queryText = ("insert into childhealth(babyName, address, babyID,dobBaby, mother, dateOfChildAttend, dateOfPCV, dateOfRotta, dateOfPentavalent,dateOfPolio, vitaminA, adbandazol) values(?,?,?,?,?,?,?,?,?,?,?,?)");

				PreparedStatement st = con.prepareStatement(queryText);
				st.setString(1,babyID);
				st.setString(2,babyName);
				st.setString(3,mother);
				st.setString(4,address);
				st.setString(5,dobBaby);
				st.setString(6,dateOfChildAttend);
				st.setString(7,dateOfPCV);
				st.setString(8,dateOfRotta);
				st.setString(9,dateOfPentavalent);
				st.setString(10,dateOfPolio);
				st.setString(11,vitaminA);
				st.setString(12,adbandazol);
				int i = st.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println("babyId already exist ");
				return;
			
			}
			out.println("Data Successifully Sent");
			
			}
		   
	}

