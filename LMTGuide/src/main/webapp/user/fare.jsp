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
			   <li><a href='index.jsp'><span>Home</span></a></li>
			   <li><a href='about.html'><span>About</span></a></li>
			   <li><a href='stations.jsp'><span>Stations</span></a></li>
			   <li class="active"><a href='fare.jsp'><span>Fare</span></a></li>
			   <li><a href='traintimetable.jsp'><span>Timming</span></a></li>
			   <li><a href='parking.jsp'><span>Parking</span></a></li>
			   <li><a href='map.html'><span>Map</span></a></li>
			   <li><a href='faq.jsp'><span>FAQ</span></a></li>
			   <li class='last'><a href='contact.html'><span>Contact</span></a></li>
			    <li><a href="login.html"><i class="fa fa-user" align="navbar-right"></i></a></li>
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
								<h1 class="entry-title">About L.M.T.Guide</h1>
							</div>
							<%@ page import="java.sql.*" %>
							<%@page import="javax.sql.*" %>
							<%@page import="java.sql.Connection" %>
							<%
								Class.forName("com.mysql.jdbc.Driver");
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
								Statement st=con.createStatement();
								ResultSet rs=st.executeQuery("select * from stations");
							%>
							<form action="searchfair.jsp" method="post">
							<div class="art-content">
								<div class="excerpt">
								<h1><span class="color-red"> Metro Fare </span></h1><hr>
								<p>To know fare between two stations, please select them from below:</p>
								<p><span style="font-weight:bold; margin-left:5px;">From:</span><br>
								<select name="stationstart" style="width:100%; height:30px; border-radius: 5px;">
									<%while(rs.next()){%>
										<option value=<%=rs.getString(1)%>><%=rs.getString(2)%>(<%=rs.getString(3)%>)</option>
									<%}%>
								</select>
								</p>
								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
									Statement stm=con.createStatement();
									ResultSet rst=stm.executeQuery("select * from stations");
								%>
								<p><span style="font-weight:bold; margin-left:5px;">TO:</span><br>
								<select name="stationend" style="width:100%; height:30px; border-radius: 5px;">
								<%while(rst.next()){%>
									<option value=<%=rst.getString(1)%>><%=rst.getString(2)%>(<%=rst.getString(3)%>)</option>
								<%}%>
							</select>
							</p>
							<input type="submit" value="Show Fare" style="width:250px;height:40px;color:white;background-color:red;border-radius:5px;font-family:max-height;font-size:15px;">
							</div>
						</form>
								<div class="note">
								<h2 class="color-red">Token</h2>
								  <ol>
									<li>Only One way permitted</li>
									<li>Validity One day</li>
									<li>Refund with in 60 min</li>
									<li>Exit within 170 min, penalty Rs 10 per hour, subject to maximum Rs 50</li>
								  </ol>
								  <div class="clear"></div>
								<div class="note">
								<h2 class="color-red">Travel Card</h2>
								  <ol>
									<li>First Time Rs 100 ( including Rs 50 refundable security)</li>
									<li>Next recharge Rs 100 to Rs 1000</li>
									<li>Validity - 1 year after every recharge, max 10 years</li>
									<li>Same station entry/exit Rs 8 charged with in 20min</li>
								  </ol>
								  <div class="clear"></div>
								<div class="note">
								<h2 class="color-red">Benefits of Lucknow Metro Smart Card</h2>
								  <ol>
									<li>You can travel to any destination without using token</li>
									<li>No need of any photo or ID proof to purchase Smart Card</li>
									<li>Travel worth Rs10 free on every journey worth Rs 100</li>
									<li>You can buy card worth Rs 150 to Rs1000 at one time and return it anytime to get the balance amount back</li>
									<li>Get rid of inconvenience of standing in a queuw to get token everytime.</li>
									<li>Freedom of entry/exit at any station</li>
									<li>You or any family member can travel on the same card</li>
									<li>Commuters can get refund of his Smart Card from Customer Care Centre of any metro station even if it gets DAMAGED, EXPIRED or UNREASABLE</li>
									<li>Validity of Smart Card is Ten Years from last date of ADD Value</li>
									<li>Discount is not applicable if Entry/Exit is made from the same station</li>
									<li>Refundable Security deposite Rs50</li>
									<li>Security desposit Rs50 will not be refunded in case of damaged Card</li>
								  </ol>
								  <div class="clear"></div>
								<div class="note">
								<h2 class="color-red">Tourist Card</h2>
								  <ol>
									<li>Specially for a single day travel</li>
									<li>Purchase a card word Rs100 and travel whole day to any station on the Lucknow Metro</li>
									<li>1 day Rs 150 (Rs 100 + Rs 50 refundable security)</li>
									<li>3 Days Rs 300 (Rs. 250 + Rs 50 refundable security)</li>
								  </ol>
								  <div class="clear"></div>
								</div>
							</div>
						</article>
					</div>
				</div>
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