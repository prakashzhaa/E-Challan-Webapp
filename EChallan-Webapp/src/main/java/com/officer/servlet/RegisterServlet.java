package com.officer.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Webservlet("/RegistrationServlet")


public class RegisterServlet extends HttpServlet{
 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try {
			String name=req.getParameter("fname");
			String idcard=req.getParameter("idcard");
			String design=req.getParameter("design");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			String checkbox=req.getParameter("checkbox");
			
			System.out.println(name+" "+idcard+" "+design+" "+phone+" "+password+" "+checkbox);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
