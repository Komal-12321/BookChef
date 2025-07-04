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
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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
			int uid=0;
			
			String uname=request.getParameter("uname");
			String ucity=request.getParameter("ucity");
			String ucontact=request.getParameter("ucontact");
			String uaddress=request.getParameter("uaddress");
			String upincode=request.getParameter("upincode");
			String uemail=request.getParameter("uemail");
			String upassword=request.getParameter("upassword");
			
		
			
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("insert into user values (?,?,?,?,?,?,?,?)");
			ps2.setInt(1, uid);
			ps2.setString(2, uname);
			ps2.setString(3, ucity);
			ps2.setString(4, (ucontact));
			ps2.setString(5, uaddress);
			ps2.setInt(6, Integer.parseInt(upincode));
			ps2.setString(7, uemail);
			ps2.setString(8, upassword);
		
			
			int i=ps2.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("User_Regis_Success.html");
			
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