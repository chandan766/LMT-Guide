<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
		<title>L.M.T.Guide</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	
	
    <!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
	================================================== -->
  	<link rel="stylesheet" href="../css/zerogrid.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/lightbox.css">
	
	<!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	
	<link rel="stylesheet" href="../css/menu.css">
	<script src="../js/jquery1111.min.js" type="text/javascript"></script>
	<script src="../js/script.js"></script>

</head>

<body>
<%
		if(session.getAttribute("admin")==null)
		{
			response.sendRedirect("../user/login.jsp");
		}
	%>
<div class="wrap-body">	
	<div class="zerogrid"  >
		<div class="row" >
			<div class="col-1-3">
			<center>
				<img src="../images/LMT.png" width="100px" height="300px" style="margin-bottom:10px;"/>
				<br>
			</center>	
			</div>
			<div class="col-1-1">
				<center>
					<h1 class="color-red" style="margin-top:10px; margin-bottom:10px; padding-top:15px; color:red; font-size:38px; float:left;">Lucknow Metro Train Guide</h1><br><br>
				</center>	
			</div>
			<div class="col-1-3">
				<h3 class="color-red" ></h3>
			</div>
		</div>
	</div>
	<div class="header">
		<div id='cssmenu' style="background-color:Red;">
			<ul>
			   <li><a href='dashboard.jsp'><span>DashBoard</span></a></li>
			   <li><a href='addstation.jsp'><span>Add Stations</span></a></li>
			   <li><a href='parkingcharges.jsp'><span>Parking Charges</span></a></li>
			   <li class="active"><a href='viewcontact.jsp'><span>View Contact</span></a></li>
			    <li class='has-sub' style="float:right; margin-top:10px;margin-right:10px; color:white; font-size:20px;"><i class="fa fa-user" align="navbar-right"></i><span> <%= session.getAttribute( "admin" ) %></span>
					<ul>
					   <li><a href='adminlogout.jsp'>Log Out</a></li>
					</ul>
				</li>
			</ul>	
			
		</div>
	<!--////////////////////////////////////Container-->
		<section id="container">
			<div class="wrap-container">
				<!-----------------content-box-2-------------------->
				<section class="content-box boxstyle-2 box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="header">
								<div class="wrapper">
									<h2 class="color-red">Contact Messages</h2>
								</div>
							</div>	
							<div class="row">
								<div class="col-1-1">
									<div class="row post">
										<div class="col-1-12">
											<div class="wrap-col">
												<table style="border-style: solid; border-width: 3px; border-color:red;">
													<caption style='background-color:red; padding:5px;'><h6>All Contact Messages</h6></caption>
													<tr>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>S.No.</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>Sender Name</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>E Mail</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Mobile No.</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Date</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Subject</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Message</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Delete</th>
													</tr>
														<%@page import="java.sql.*" %>
														<%@page import="javax.sql.*" %>
														<%@page import="java.sql.Connection" %>
														<%
														Class.forName("com.mysql.jdbc.Driver");
														Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
														Statement st=con.createStatement();
														String query="select * from contact";
														ResultSet rs=st.executeQuery(query);
														%>
														<center>
														<% int i = 1;
															while(rs.next()){ %>
														<tr>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=i%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(2)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(3)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(4)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(5)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(6)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(7)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><a class="sendButton" href="contactdel.jsp?deleteid=<%=rs.getString(1)%>" name="Submit">Delete</a></td>
														</tr>
														<%i++;} %>
												</table>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</section>
			</div>
		</section>
							
		<hr class="line">
		<!--////////////////////////////////////Footer-->
		<footer>
			<div class="wrap-footer">
				<div class="zerogrid">
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<p>Copyright - <a href="#" target="_blank" rel="nofollow">L.M.T.Guide</a> designed by chandan maurya</p>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<ul class="social-buttons">
									<li><a href="#"><i class="fa fa-twitter"></i></a>
									</li>
									<li><a href="#"><i class="fa fa-facebook"></i></a>
									</li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<ul class="quick-link">
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Terms of Use</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>