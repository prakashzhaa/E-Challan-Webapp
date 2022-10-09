package com.officer.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DAO.OfficerDAOImpl;
import com.DB.DBConnect;
import com.entity.Officer;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			
			OfficerDAOImpl dao=new OfficerDAOImpl(DBConnect.getConn());
			HttpSession session=(HttpSession) req.getSession();
			
			
			
			String idcard = req.getParameter("idcard");
			String password = req.getParameter("password");
			
			if("admin".equals(idcard) && "admin".equals(password)) {
				Officer offsr=new Officer();
				session.setAttribute("officerobj",offsr);
				resp.sendRedirect("admin/home.jsp");
			} 
			else {
				
				Officer offsr=dao.officerLogin(idcard,password);
					if(offsr!=null) {
						session.setAttribute("officerobj","offsr");
						resp.sendRedirect("home.jsp");
					}else {
						session.setAttribute("failedMsg","IDCARD and PASSWORD Invalid!!");
						resp.sendRedirect("login.jsp");
					}
										
				}
				
				
				resp.sendRedirect("home.jsp");
			
	
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
