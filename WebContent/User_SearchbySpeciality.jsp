<%@page import="java.sql.*" %>
<%@page import="com.komal.connect.*" %>
<%@page import="com.komal.chef.User.*" %>
<%@page import="com.komal.chef.PojoUser" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>ChefsFeed</title>
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
.forms h4 {
    font-size: 1.3em;
    color: black;
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
.login-body{
color:black;
}
.form-title{
color:grey;
}</style>
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="User_ViewAllChefs.jsp"><i class="fa fa-check-square-o nav_icon"></i>View All Chefs</a>
						</li>
						<li>
							<a href="User_SearchbySpeciality.jsp"><i class="fa fa-check-square-o nav_icon"></i>Search Chefs</a>
						</li>
						<li>
							<a href="User_ViewBookingsStatus.jsp"><i class="fa fa-check-square-o nav_icon"></i>View Bookings</a>
						</li>
						<li>
							<a href="User_ChangePass.html"><i class="fa fa-check-square-o nav_icon"></i>Change Password</a>
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
						<span>User Panel</span>
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
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h3 class="title1"><b>Search Chef</b></h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Enter Following Details :</h4>
						</div>
						<div class="form-body">
							<form action="User_SearchbySpeciality.jsp" > 
								
								<div class="form-group"> 
									<br><label for="ccity"><h4>Enter City</h4></label><br><br>
									<input type="text" name="ccity" class="form-control" id="exampleInputEmail1" placeholder="Your City"> <br><br>
									<label for="cspeciality"><h4>Enter Speciality</h4></label><br><br>
									<input type="text" name="cspeciality" class="form-control" id="exampleInputEmail1" placeholder="Your Food Type"> <br>
							</div>	 
								<button type="submit" class="btn btn-default">Search</button> 
							</form> 
						</div>
					</div>
			<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 			
<div class="table-container">
 <table class="table table-hover">		
						

					<% try
	{
						String Key1=request.getParameter("ccity");
						String Key2=request.getParameter("cspeciality");
		
		if(Key1!=null & Key2!=null)
		{%>
			<thead><br><br>
							<th>#</th>
							<th>Name</th> 
							<th>Speciality</th> 
							<th>Opening</th>
							<th>Closing</th> 
							<th>Address</th> 
							<th>Area</th> 
							<th>City</th> 
							<th>Pincode</th> 
							<th>Contact</th> 
							<th>Email</th> 
							<th>Password</th> 
							<th>Status</th>
							<th>Action</th>
							</tr>
							
						 </thead>
	<%
	int uid=PojoUser.getUid();
	Connection con=ConnectDB.dbCon();
	PreparedStatement ps=con.prepareStatement("select * from chef where ccity=? and cspeciality=? and cstatus=?");
	ps.setString(1, Key1);
	ps.setString(2, Key2);
	ps.setString(3, "Approved");
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
	{
	
	%>
	

	<tr>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><%=rs.getInt(9) %></td>
		<td><%=rs.getString(10) %></td>
		<td><%=rs.getString(11) %></td>
		<td><%=rs.getString(12) %></td>
		<td><%=rs.getString(13) %></td>
	<td><a href="Booking_Data.jsp?id=<%=rs.getInt(1)%>">Book</a></td> 
		
		<%}
		}
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
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>