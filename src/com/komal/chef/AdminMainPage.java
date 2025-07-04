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
 * Servlet implementation class AddAccount
 */
public class AdminMainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMainPage() {
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
			String accno=request.getParameter("accno");
			String aname=request.getParameter("aname");
			String amob=request.getParameter("amob");
			String abal=request.getParameter("abal");
			
			Connection con=ConnectDB.dbCon();
			PreparedStatement ps2=con.prepareStatement("insert into account values (?,?,?,?)");
		
			ps2.setInt(1, Integer.parseInt(accno));
			ps2.setString(2, aname);
			ps2.setInt(3, Integer.parseInt(amob));
			ps2.setFloat(4, Float.parseFloat(abal));
			
			int i=ps2.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success.html");
			
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
		
