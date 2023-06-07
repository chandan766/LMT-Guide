<!DOCTYPE html>
<html lang="en"> <!--<![endif]-->
<head>
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
	<input id="adminRegister" value=<%=session.getAttribute("admin")%> style="display:none;">
	
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
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
					<h1 class="color-red" style="margin-top:10px; margin-bottom:10px; padding-top:15px; color:red; font-size:38px; float:left;"><marquee>Lucknow Metro Train Guide</marquee></h1><br><br>
				</center>	
			</div>
			<div class="col-1-3">
				<h3 class="color-red" ></h3>
			</div>
		</div>
	</div>
	<div class="header">
		<div id='cssmenu' style="background-color:red;">
			<ul>
			   <li class="active"><a href='dashboard.jsp'><span>DashBoard</span></a></li>
			   <li><a href='addstation.jsp'><span>Add Stations</span></a></li>
			   <li><a href='parkingcharges.jsp'><span>Parking Charges</span></a></li>
			   <li class='last'><a href='viewcontact.jsp'><span>View Contact</span></a></li>
			   <li class='has-sub' style="float:right; margin-top:10px;margin-right:10px; color:white; font-size:20px;"><i class="fa fa-user" align="navbar-right"></i><span> <%= session.getAttribute( "admin" ) %></span>
					<ul>
					   <li><a href='adminlogout.jsp'>Log Out</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</div>

		<!--////////////////////////////////////Container-->
		<section id="container">
			<div class="wrap-container clearfix">
				<div id="main-content">
					<div class="wrap-content">
						<article>
							<div class="art-header">
								<h1 class="entry-title" style="color:white; font-size:38px; float:center;">Admin Dashboard</h1>
							</div>
						</article>
					</div>
				</div>
		
			
			<div id="adminRegisterSection" style="display:none;">
			<div class="header">
				<div class="wrapper" style="text-align:center;">
					<h2 class="color-red">Register Admin</h2>
				</div>
			</div>	
			
			<form name="form1" id="ff" method="post" action="register.jsp">
			<label class="row">
				<div class="col-1-1">
					<div class="wrap-col">
						<input type="text" name="name" id="name" placeholder="Enter Name" required="required" />
					</div>
				</div>
				<div class="col-1-1">
					<div class="wrap-col">
						<input type="password" name="pass" id="email" placeholder="Enter Password" required="required" />
					</div>
				</div>
			</label>
			<div class="row">
				<div class="wrap-col"> 
					<center><input class="sendButton" type="submit" name="btnlogin" value="Register" style="width:150px;"></center>
				</div>
			</div>
		   </form>
		   </div>
		   
		   
			</div>
		</section>
		
		
		
		
		<!-----------------content-box-2-------------------->
				<section class="content-box boxstyle-2 box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							
							<%
								Class.forName("com.mysql.jdbc.Driver");
								Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
								Statement st2=con2.createStatement();
								ResultSet rs2=st2.executeQuery("select S_ID from stations limit 1");
							%>
							
								<%
								Statement st3=con2.createStatement();
								ResultSet rs3 =st3.executeQuery("select S_ID from stations order by S_ID desc limit 1");
								%>
								
								
								<%
									Statement st4=con2.createStatement();
									ResultSet rs4 =st4.executeQuery("select count(S_ID) from stations");
								%>
								
								
								<%
								Statement st5=con2.createStatement();
								ResultSet rs5 =st5.executeQuery("select count(Name) from contact");
								%>
								
								
								<%
								Statement st6=con2.createStatement();
								ResultSet rs6 =st6.executeQuery("select count(Name) from contact where Date=curdate()");
							%>
								
								
					<div class="col-2-4">
							<div class="wrap-col">
								<div class="contact">
								  <div id="contact_form">
									<table style="border-style: solid; border-width: 3px; border-color:red;">
													<caption style="background-color:red; padding:5px; rowspan:5px;"><h3>Station Informations</h3></caption>
													<tr>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">First Station Id</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Last Station Id</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Total Stations</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Add Stations</th>
													</tr>
													<tr>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%while(rs2.next()){%><%= rs2.getString(1)%><%}%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%while(rs3.next()){%><%=rs3.getString(1)%><%}%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%while(rs4.next()){%><%= rs4.getString(1)%><%}%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><a href="addstation.jsp" style="text-decoration:underline;">Click</a></td>
													</tr>
												</table>		
								  </div>
							</div>
						</div>
					</div>
			     
				     	<div class="col-2-4">
							<div class="wrap-col">
								<div class="contact">
									<div id="contact_form">
											<table style="border-style: solid; border-width: 3px; border-color:red;">
												<caption style="background-color:red; padding:5px; rowspan:5px;"><h3>Contact Messages</h3></caption>
													<tr>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Today Contact Messages</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Total Contact Messages</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">Show Messages</th>
													</tr>
												
													<tr>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%while(rs6.next()){%><%=rs6.getString(1)%><%}%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%while(rs5.next()){%><%=rs5.getString(1)%><%}%></td>
														<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><a href="viewcontact.jsp" style="text-decoration:underline;">Click</a></td>
													</tr>
												</table>
									</div>
								</div>
							</div>
				     	</div>
			      </div>
			</div>
		</section>

			
		
			<!--////////////////////////////////////Container-->
		<section id="container">
			<div class="wrap-container">
				<!-----------------content-box-2-------------------->
				<section class="content-box boxstyle-2 box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="header">
								<div class="wrapper">
									<h2 class="color-red">Update Station</h2>
								</div>
							</div>	
							
							
							
							
							<h1><span class="color-red"> Select Station </span></h1>
							<hr>
							<p>
							<select id="sid" name="statstation" style="width:100%; height:40px; border-radius: 5px;">
								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
									Statement st1=con1.createStatement();
									ResultSet rs1=st1.executeQuery("select * from stations");
								%>
								<%while(rs1.next()){%>
									<option id="opt" value="<%=rs1.getString(2).replace(" ", "#")+"|"+rs1.getString(1).replace(" ", "#")+"|"+rs1.getString(3).replace(" ", "#")+"|"+rs1.getString(4).replace(" ", "#")+"|"+rs1.getString(5).replace(" ", "#")+"|"+rs1.getString(6).replace(" ", "#")+"|"+rs1.getString(7).replace(" ", "#")+"|"+rs1.getString(8).replace(" ", "#")+"|"+rs1.getString(9)%>"><%=rs1.getString(2)%>(<%=rs1.getString(3)%>)</option>
								<%}%>
							</select>
							</p>
							<p style="text-align:center;"><button onclick="selectStation()" style="cursor:pointer;background-color:red;-webkit-border-radius:3px;width:250px;height:40px;color:#ffffff;border:0px;font-size:16px;" onMouseOver="this.style.opacity='0.6'" onMouseOut="this.style.opacity='1'">Enter</button></p>
							<script>
								function selectStation(){
									var x = document.getElementById("sid");
									var value = x.value.split("|");
									document.getElementById("Station Name").value=value[0].replaceAll("#", " ");
									document.getElementById("Station ID").value=value[1].replaceAll("#", " ");
									document.getElementById("Station Code").value=value[2].replaceAll("#", " ");
									document.getElementById("corridor").value=value[3].replaceAll("#", " ");
									document.getElementById("Distance").value=value[4].replaceAll("#", " ");
									document.getElementById("Contact No").value=value[5].replaceAll("#", " ");
									document.getElementById("date").value=value[6].replaceAll("#", " ");
									document.getElementById("placess").value=value[7].replaceAll("#", " ");
									document.getElementById("placeid").value=value[8];
								}
							</script>
							
							
							
							<div class="col-1-1">
							<div class="wrap-col">
								<div class="contact">
									
									<div id="contact_form">
										<form name="form1" id="ff" method="post" action="stationupdate.jsp">
											<label class="row">
												<div class="col-1-1">
													<div class="wrap-col">
														<input type="text" name="StationName" id="Station Name" placeholder="Station Name" autocomplete="off" required="required" />
													</div>
												</div>
											</label>
											<label>	
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="StationID" id="Station ID"  placeholder="Station ID" readonly />
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="StationCode" id="Station Code"  placeholder="Station Code" autocomplete="off" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<select style="width:100%; height:30px; border-radius: 5px; border:1px solid red;height:45px;" id="corridor" name="corridor" required="required">
															<option selected disable>Select  Corridor</option>
															<option value="North-South">North-South</option>
															<option value="East-West">East-West</option>
														</select>
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col">
													<input type="text" name="Distance" id="Distance" placeholder="Enter Distacne(m)" autocomplete="off" required="required" />
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col">
													<input type="text"  name="ContactNo" id="Contact No" placeholder="Enter Contact No" autocomplete="off" required="required"/>
													</div>
												</div>
												 <center>
													<div class="col-1-2">
														<div class="wrap-col">
															<input type="date"  name="opendate" id="date" placeholder="Date" required="required"/>
														</div>
													</div>
												</center>										
											
												<div class="col-1-2">
												<div class="wrap-col">
													<input name="nearplacess" id="placess"  required="required" autocomplete="off" placeholder="Near By Places" />
												</div>
												</div>
												<div class="col-1-2">
												<div class="wrap-col">
													<input name="placeid" id="placeid"  required="required" autocomplete="off" placeholder="Place Id" />
													</div>
												</div>
											</label>
											<center><input class="sendButton" type="submit" name="Submit" value="Update Station"></center>
										</form>
									</div>
								</div>
							</div>
						</div>
						<center>
							<div class="header">
								<div class="wrapper">
									<h2 class="color-red">List of All Station</h2>
								</div>
							<div class="row">
								<div class="col-1-1">
									<div class="row post">
										<div class="col-1-12">
											<div class="wrap-col">
											<form action="stationdel.jsp" method="post">
												<table style="border-style: solid; border-width: 3px; border-color:red;">
													<caption style='background-color:red; padding:5px;'><h6>All Station</h6></caption>
													<tr>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>S.No.</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Station ID</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>Station Name</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Station Code</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Corridor</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Distance(m)</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Contact No</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Opening Date</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Near By Places</th>
														<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Place Id </th>
													</tr>
														
														<%
															Class.forName("com.mysql.jdbc.Driver");
															Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
															Statement st=con.createStatement();
															ResultSet rs=st.executeQuery("select * from stations");
														%>
														<center>
														<%int i = 1;while(rs.next()){%>
														<tr>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=i%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(1)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(2)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(3)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(4)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(5)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(6)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(7)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(8)%></td>
															<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(9)%></td>
														</tr>
														<%i++;} %>
												</table>
												</form>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						</center>
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
	<script type="text/javascript">
	  var adminName = document.getElementById("adminRegister").value;
	  if(adminName=="chandan"){
		  document.getElementById("adminRegisterSection").style.display="block";
	  }
	  else{
		  document.getElementById("adminRegisterSection").style.display="none";
	  }
	</script>
</body>
</html>