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
			response.sendRedirect("../user/login.html");
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
			   <li class="active" ><a href='parkingcharges.jsp'><span>Parking Charges</span></a></li>
			   <li class='last'><a href='viewcontact.jsp'><span>View Contact</span></a></li>
				<li class='has-sub' style="float:right; margin-top:10px;margin-right:10px; color:white; font-size:20px;"><i class="fa fa-user" align="navbar-right"></i><span> <%= session.getAttribute("admin") %></span>
					<ul>
					   <li><a href='adminlogout.jsp'>Log Out</a></li>
					</ul>
				</li>
			</ul>
			
		</div>

		<br>
		<section id="container">
			<div class="wrap-container">
				
			<div class="zerogrid">
				<div class="row">
					<div class="col-2-4">
						<h2 class="color-red" style="text-align:center;">Add Parking Charges</h2>
							<div class="wrap-col">
								<div class="contact">
									<div id="contact_form">
										<form name="form1" id="ff" method="post" action="addparkingcharge.jsp" style="float:center;">
											<label class="row">
												<div class="col-1-1">
													<div class="wrap-col">Select Vechile :
													<select style="width:100%; height:30px; border-radius: 5px;border:1px solid red;height:45px;placeholder:Select corridor:;" id="DailyHours" name="VechileName" required="required">
														<option value="null">Select Vechile...</option>
														<option value="Car">Car</option>
														<option value="Bike">Bike</option>
														<option value="Cycle">Cycle</option>
													</select>
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col"><6 Hours Charges :
													 	<input type="text"  name="L6Hours"   placeholder="Enter Charges." required="required" />
													 </div>
                                              	</div>
                                            	<div class="col-1-2">
													<div class="wrap-col"><12 Hours Charges :
													 	<input type="text"  name="L12Hours"  placeholder="Enter Charges." required="required" />
													 </div>
                                              	</div>
                                              	<div class="col-1-2">
													<div class="wrap-col">Daily Charge :
													 	<input type="text"  name="Daily" id="SelectVechile"  placeholder="Enter Charges." required="required" />
													 </div>
                                              	</div>
												<div class="col-1-2">
													<div class="wrap-col">Monthly Charge :
													 	<input type="text"  name="Monthly" id="SelectVechile"  placeholder="Enter Charges." required="required" />
													 </div>
                                              	</div>
										</label>
										 <center><input class="sendButton" type="submit" name="Submit" value="Submit"></center>
									</form>			
								</div>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<h2 class="color-red" style="text-align:center;">Parking Charges</h2>
							<div class="wrap-col">
								<div class="contact">
									<div id="contact_form">
											<table style="border-style: solid; border-width: 3px; border-color:red;">
													<caption style='background-color:red; padding:5px;'><h6>Hourly / Night Vehicle Parking Charges</h6></caption>
													<tr>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='2'>S.No.</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='2'>Vechile</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='2'>Daily hours</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='2'>Night Charges</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  rowspan='2'>Delete</th>
														
													</tr>
													<tr>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">< 6 hrs.</td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">< 12 hrs.</td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Daily</td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Monthly</td>
													</tr>
														<%@page import="java.sql.*" %>
														<%@page import="javax.sql.*" %>
														<%@page import="java.sql.Connection" %>
														<%
														Class.forName("com.mysql.jdbc.Driver");
														Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
														Statement st=con.createStatement();
														ResultSet rs=st.executeQuery("select * from parking");
														%>
														<center>
														<%int i = 1; while(rs.next()){%>
														<tr>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=i%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(2)%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(3)%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(4)%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(5)%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(6)%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><a href="parkingdel.jsp?parkid=<%=rs.getString(1)%>">Delete</a></td>
													</tr>
														
														<%i++;} %>
														
												</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<hr class="line">
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