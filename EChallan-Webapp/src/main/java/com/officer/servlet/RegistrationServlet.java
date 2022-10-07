package com.officer.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/registration")
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
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

}
