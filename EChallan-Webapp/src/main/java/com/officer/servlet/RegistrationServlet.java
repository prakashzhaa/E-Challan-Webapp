package com.officer.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.OfficerDAOImpl;
import com.DB.DBConnect;
import com.entity.Officer;

import jakarta.servlet.annotation.WebServlet;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		{
			try {
				String name = req.getParameter("fname");
				String idcard = req.getParameter("idcard");
				String design = req.getParameter("design");
				String phone = req.getParameter("phone");
				String password = req.getParameter("password");
			

				// System.out.println(name+" "+idcard+" "+design+" "+phone+" "+password+"
				// "+checkbox);

				Officer offsr = new Officer();
				offsr.setName(name);
				offsr.setIdcard(idcard);
				offsr.setDesign(design);
				offsr.setPhone(phone);
				offsr.setPassword(password);

				HttpSession session=req.getSession();
				
			
					OfficerDAOImpl dao = new OfficerDAOImpl(DBConnect.getConn());
					boolean f = dao.officerRegister(offsr);

					if (f) {
								//System.out.println("User Registration Sucessfull!!, You will get your login credential within one working day.");
						session.setAttribute("succMsg","User Registration Sucessfull!!, You will get your login credential within one working day.");
						resp.sendRedirect("registration.jsp");	
						
					} else {
						//System.out.println("Something wrong on Server!!, Try again after some time...");
						
						session.setAttribute("failedMsg","Something wrong on Server!!, Try again after some time...");
						resp.sendRedirect("registration.jsp");						
						
					}
				 

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	
}
