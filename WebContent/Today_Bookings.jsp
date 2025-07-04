<%@page import="java.sql.*" %>
<%@page import="com.komal.connect.*" %>
<%@page import="com.komal.chef.PojoUser" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>ChefsFeed booking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
.cbp-spmenu-vertical {
    width: 309px;
    height: 100%;
    top: 76px;
    z-index: 1000;
    background-image:url("images/Capture.png");
	padding: 2em 0;
}
button#showLeftPush {
background-color:black;
color:white;
}

.clearfix
{
background-image:url("images/Capture.png");
}
h3.title1 {
    font-size: 2em;
    color: #408080;
    margin-bottom: 0.8em;
}
.user-name p{
	font-size:1em;
	color:#E64E02;
	line-height:1em;
	font-weight:700;
}
.table-container {
    overflow-x: auto;
}

.table {
    width: 100%; /* or a specific width if needed */
}
.table {
    min-width: 1200px; /* Set a minimum width for your table */
}

</style>
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					
					<ul class="nav" id="side-menu">
						<li>
							<a href="Pending_Bookings.jsp"><i class="fa fa-check-square-o nav_icon"></i>Pending Bookings</a>
						</li>
						<li>
							<a href="Today_Bookings.jsp"><i class="fa fa-check-square-o nav_icon"></i>Today's Bookings</a>
						</li>
						<li>
							<a href="Search_Bookings.jsp"><i class="fa fa-check-square-o nav_icon"></i>Search Bookings</a>
						</li>
						<li>
							<a href="Approved_Bookings.jsp"><i class="fa fa-check-square-o nav_icon"></i>Approved Bookings</a>
						</li>
						<li>
							<a href="Disapproved_Bookings.jsp"><i class="fa fa-check-square-o nav_icon"></i>Disapproved  Bookings</a>
						</li>
						<li>
							<a href="Chef_ChangePass.html"><i class="fa fa-check-square-o nav_icon"></i>Change Password</a>
						</li>
						<li>
							<a href="index.html"><i class="fa fa-check-square-o nav_icon"></i>Log Out</a>
						</li>	
			
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<h1>ChefsFeed</h1>
						<span>Chef Panel</span>
					</a>
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					
					
					
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		</div>
			<div class="clearfix"> </div>	
		</div>
		
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
				
					<h3 class="title1"><b>Today's Bookings</b></h3>
					
<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 			
<div class="table-container">
    <table class="table table-hover">
						<thead>
							<th>Booking ID</th>
							<th>User ID</th> 
							<th>Chef ID</th> 
							<th>Client Name</th>
							<th>Client Mob</th>
							<th>Booking Details</th>
							<th>Booking Date</th> 
							<th>Booking Time</th> 
							<th>Booking Status</th>
							</tr>
							
						 </thead>
						<%
						try
						{
							int cid=PojoUser.getCid();
								Connection con=ConnectDB.dbCon();
								SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
								String currentDate=sdf.format(new Date());
								PreparedStatement ps=con.prepareStatement("select * from bookings where bdate=? and bstatus=? and cid=?");
								ps.setString(1, currentDate);
								ps.setString(2, "Approved");
								ps.setInt(3, cid);
								ResultSet rs=ps.executeQuery();
								while(rs.next())
								{
									int uid=rs.getInt(2);
									PreparedStatement ps1=con.prepareStatement("select * from user where uid=?");
									ps1.setInt(1,uid);
									ResultSet rs1=ps1.executeQuery();
									if(rs1.next())
									%>
									<td><%=rs.getInt(1) %></td>
									<td><%=rs.getInt(2) %></td>
									<td><%=rs.getInt(3) %></td>
									<td><%=rs1.getString(2) %></td>
									<td><%=rs1.getString(4) %></td>
									<td><%=rs.getString(4) %></td>
									<td><%=rs.getString(5) %></td>
									<td><%=rs.getString(6) %></td>
									<td><%=rs.getString(7) %></td>
											
								</tr>
						<%  }
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
						%> 
					</table>
					</div>
				
				</div>
			</div>
		</div>
	
	</div>