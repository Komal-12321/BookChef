package com.komal.chef;
import com.komal.chef.User.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.komal.connect.ConnectDB;

/**
 * Servlet implementation class Booking_Data
 */
public class Booking_Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booking_Data() {
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
			int bid=0;
			int uid=PojoUser.getUid();
			int cid=Integer.parseInt(request.getParameter("cid"));
			String bdetails=request.getParameter("bdetails");
			String bdate=request.getParameter("bdate");
			String btime=request.getParameter("btime");
			String bstatus="Pending";
	
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("insert into bookings values (?,?,?,?,?,?,?)");
			ps2.setInt(1,bid);
			ps2.setInt(2,uid);
			ps2.setInt(3, cid);
			ps2.setString(4, bdetails);
			ps2.setString(5, bdate);
			ps2.setString(6, btime);
			ps2.setString(7, bstatus);
		
		
			
			int i=ps2.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("Booking_Success.html");
			
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
