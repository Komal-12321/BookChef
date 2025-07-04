package com.komal.chef;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.komal.connect.ConnectDB;

/**
 * Servlet implementation class ChefLogin
 */
public class ChefLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefLogin() {
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
		doGet(request, response);try
		{
			String cemail=request.getParameter("cemail");
			String cpassword=request.getParameter("cpassword");
			String cstatus="Approved";
			
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("select * from chef where cemail=? and cpassword=? and cstatus=?");
			ps2.setString(1, cemail);
			ps2.setString(2, cpassword);
			ps2.setString(3, cstatus);
			
			ResultSet rs2 =ps2.executeQuery();
		
			if(rs2.next())
			{
				int cid=rs2.getInt(1);
				PojoUser.setCid(cid);
				response.sendRedirect("ChefMainPage.html");
			
		}
		else
		{
			response.sendRedirect("Chef_Login_Fail.html");
		}
	}
	catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}