<%@page import="java.sql.*" %>
<%@page import="com.komal.connect.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>ChefsFeed view</title>
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
							<a href="Admin_ViewPending.jsp"><i class="fa fa-check-square-o nav_icon"></i>Pending Chefs</a>
						</li>
						<li>
							<a href="Admin_ViewApproved.jsp"><i class="fa fa-check-square-o nav_icon"></i>Approved Chefs</a>
						</li>
						<li>
							<a href="Admin_ViewDisapproved.jsp"><i class="fa fa-check-square-o nav_icon"></i>Disapproved Chefs</a>
						</li>
						<li>
							<a href="Admin_ViewUsers.jsp"><i class="fa fa-check-square-o nav_icon"></i> Users</a>
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
						<span>Admin Panel</span>
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
				<div class="tables">
					<h3 class="title1"><b>Disapproved Chefs</b></h3>
					

			<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 			
<div class="table-container">
    <table class="table table-hover">
						<thead>
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
							
							
							</tr>
							
						 </thead>
						<%
						try
						{
								Connection con=ConnectDB.dbCon();
								PreparedStatement ps=con.prepareStatement("select * from chef where cstatus=?");
								ps.setString(1, "Disapproved");
								ResultSet rs=ps.executeQuery();
								while(rs.next())
								{%>
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
									
								</tr>
						<%}
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