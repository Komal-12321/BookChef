package com.komal.chef;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.komal.connect.ConnectDB;

/**
 * Servlet implementation class Chef_ChangePass
 */
public class Chef_ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chef_ChangePass() {
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
		
		try
		{
			String cemail=request.getParameter("cemail");
			String cpassword=request.getParameter("cpassword");
			String chefpassword=request.getParameter("chefpassword");
			Connection con=ConnectDB.dbCon();
			
				PreparedStatement ps=con.prepareStatement("update chef set cpassword=? where cemail=? and cpassword=?");
				ps.setString(1, (chefpassword));
				ps.setString(2, (cemail));
				ps.setString(3, (cpassword));
				int i=ps.executeUpdate();
				if(i>0)
				{
					response.sendRedirect("Chef_Go Back.html");
				}
				else
				{
					response.sendRedirect("error.html");
				}
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}
}



