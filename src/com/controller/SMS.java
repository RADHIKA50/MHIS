package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;


@WebServlet("/SMS")
public class SMS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static final String ACCOUNT_SID = "AC0539f6d58d97da0be1cb0f6115d68215";
	  public static final String AUTH_TOKEN = "5952b9f52e909c16918945a9d564f309";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SMS() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  // Find your Account Sid and Token at twilio.com/user/account
		  
		 Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

		    Message message = Message.creator(new PhoneNumber("+919028197938"),
		        new PhoneNumber("+16503790589"), 
		        "Dear Mother!  You are requered to attend clinic on 16-04-2019.Please come on time.").create();

		    System.out.println(message.getSid());
		    response.sendRedirect("sms.jsp");
	}

}
