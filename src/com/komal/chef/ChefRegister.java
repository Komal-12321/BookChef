package com.komal.chef;
import java.sql.*;

import com.komal.connect.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegisterUser
 */
public class ChefRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefRegister() {
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
			int cid=0;
			
			String cname=request.getParameter("cname");
			String cspeciality=request.getParameter("cspeciality");
			String copen_time=request.getParameter("copen_time");
			String cclose_time=request.getParameter("cclose_time");
			String caddress=request.getParameter("caddress");
			String carea=request.getParameter("carea");
			String ccity=request.getParameter("ccity");
			String cpincode=request.getParameter("cpincode");
			String ccontact=request.getParameter("ccontact");
			String cemail=request.getParameter("cemail");
			String cpassword=request.getParameter("cpassword");
			String cstatus=("Pending");
		
			
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("insert into chef values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps2.setInt(1, cid);
			ps2.setString(2, cname);
			ps2.setString(3, cspeciality);
			ps2.setString(4, copen_time);
			ps2.setString(5, cclose_time);
			ps2.setString(6, caddress);
			ps2.setString(7, carea);
			ps2.setString(8, ccity);
			ps2.setInt(9, Integer.parseInt(cpincode));
			ps2.setString(10,ccontact);
			ps2.setString(11, cemail);
			ps2.setString(12, cpassword);
			ps2.setString(13, cstatus);
		
			
			int i=ps2.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("Chef_Regis_Success.html");
			
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