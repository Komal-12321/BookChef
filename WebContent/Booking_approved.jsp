<%@page import="java.sql.*" %>
<%@page import="com.komal.connect.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
{
	String bid=request.getParameter("id");
	Connection con=ConnectDB.dbCon();
	PreparedStatement ps=con.prepareStatement("update bookings set bstatus=? where bid=?");
	ps.setString(1, "Approved");
	ps.setInt(2, Integer.parseInt(bid));
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("Pending_Bookings.jsp");
	}
	else
	{
		response.sendRedirect("Chef_Login_Fail.html");
	}
}

	catch(Exception e)
	{
		e.printStackTrace();
	}%>
	
</body>
</html>