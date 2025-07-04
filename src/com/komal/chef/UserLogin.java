package com.komal.chef;
import com.komal.chef.PojoUser.*;
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
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		doGet(request, response);doGet(request, response);try
		{
			String uemail=request.getParameter("uemail");
			String upassword=request.getParameter("upassword");
			
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("select * from user where uemail=? and upassword=?");
			ps2.setString(1, uemail);
			ps2.setString(2, upassword);
			
			ResultSet rs2 =ps2.executeQuery();
		
			if(rs2.next())
			{
				int uid=rs2.getInt(1);
				PojoUser.setUid(uid);
				response.sendRedirect("UserMainPage.html");
			
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