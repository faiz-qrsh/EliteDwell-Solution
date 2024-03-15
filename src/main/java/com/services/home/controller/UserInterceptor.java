package com.services.home.controller;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserInterceptor extends HandlerInterceptorAdapter{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String email=request.getParameter("email");
		//Verify email by calling Email API
		
		
		
		
		
		//Checking the length of mobile number
		String mobNumber=request.getParameter("mobNumber");
		if(mobNumber.length()!=10) {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h3 style=\"color: red; text-align: center;\">Enter 10 digit Mobile Number</h3>");
			RequestDispatcher dispatcher=request.getRequestDispatcher("signup-form");
			dispatcher.include(request, response);
			return false;
		}
		//Apply OTP Verification
		
		
		
		
		
		
		
		
		//Apply some security
		String password=request.getParameter("password");
		
		
		return true;
	}

	
}
