<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic Page Needs -->
	<meta charset="utf-8">
	<title>L.M.T.Guide</title> 
	
    <!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS -->
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
				<img src="../images/LMT.png" width="100px" height="300px" style="margin-bottom:10px;" />
				<br>
			</center>	
			</div>
			<div class="col-1-1">
				<center>
					<h1 class="color-red" style="margin-top:10px; margin-bottom:10px; padding-top:15px; color:red; font-size:38px; float:left;"><marquee scrollamount=3; direction="left" loop="true">Lucknow Metro Train Guide</marquee></h1><br><br>
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
			   <li class="active"><a href='index.jsp'><span>Home</span></a></li>
			   <li><a href='about.html'><span>About</span></a></li>
			   <li><a href='stations.jsp'><span>Stations</span></a></li>
			   <li><a href='fare.jsp'><span>Fare</span></a></li>
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
			<div class="wrap-container">
				<!-----------------content-box-1-------------------->
				<section class="content-box boxstyle-1 box-1">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="col-1-2">
							<div class="wrap-col">
									<center>
										<div class="w3-content w3-section" style="max-width:600px">
											<img class="mySlides" src="../images/Lucknow_Metro1.jpg" style="width:100%" />
											<img class="mySlides" src="../images/Lucknow_Metro3.jpg" style="width:100%" />
										</div>	
									</center>
								</div>
								<script>																			
									var myIndex = 0;
									carousel();
									function carousel() {
										var i;
										var x = document.getElementsByClassName("mySlides");
										for (i = 0; i < x.length; i++) {
											x[i].style.display = "none";  
										}
											myIndex++;
										if (myIndex > x.length) {myIndex = 1}    
										x[myIndex-1].style.display = "block";  
										setTimeout(carousel, 2000); 
									}
								</script>	
							</div>
							<div class="col-1-2">
								<div class="wrap-col">
									<div class="row">
										<div class="t-center" style="padding-top: 60px;">
											<div class="header">
												<div class="wrapper">
													<h1><span class="color-red"> Welcome to  L.M.T.Guide</span></h1>
												</div>
											</div>
											<p>The Lucknow Metro is a Mass Rapid Transit System (MRTS) being constructed to provide the city of Lucknow, Uttar Pradesh with an environment friendly atmosphere. The commencement of civil works started on 27 September 2014. Lucknow Metro Rail Corporation Limited or LMRC is working on this project which will be an alternative mode of transport since approximately 94% of the city's registered vehicles are private,city had over 2 million registerd vehicle in 2015.</p>
											<a href="https://en.wikipedia.org/wiki/Lucknow_Metro" class="button" target="_blank" >More Details</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<%@ page import="java.sql.*" %>
							<%@page import="javax.sql.*" %>
							<%@page import="java.sql.Connection" %>
							
						<form action="stationsearch.jsp" method="post">
							<h1><span class="color-red"> Lucknow Metro Route Search </span></h1>
							<hr>
							<p><span style="font-weight:bold; margin-left:5px;">From:</span><br>
							<select name="statstation" style="width:100%; height:30px; border-radius: 5px;">
								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from stations");
								%>
								<%while(rs.next()){%>
									<option value=<%=rs.getString(1)%>><%=rs.getString(2)%>(<%=rs.getString(3)%>)</option>
								<%}%>
							</select>
							</p>
							
							<p><span style="font-weight:bold; margin-left:5px;">TO:</span><br>
							<select name="endstation" style="width:100%; height:30px; border-radius: 5px;">
								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
									Statement stm=con.createStatement();
									ResultSet rst=stm.executeQuery("select * from stations");
								%>
								<%while(rst.next()){%>
									<option value=<%=rst.getString(1)%>><%=rst.getString(2)%>(<%=rst.getString(3)%>)</option>
								<%}%>
							</select>
							</p>
							<input type="submit" value="Show Route" style="width:250px;height:40px;color:white;background-color:red;border-radius:5px;font-family:max-height;font-size:15px;">
						</form>	
						</div>
					</div>
				</section><br>
				<!-----------------content-box-2-------------------->
				<section class="content-box boxstyle-2 box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="header">
								<div class="wrapper">
									<h2 class="color-red">About Me</h2>
								</div>
							</div>	
							<div class="row">
								<div class="col-1">
									<div class="row post">
										<div class="col-1-4">
											<div class="wrap-col wrapper">
												<a href="#"><img src="../images/Chandan.jpg" style="border-radius:20px"></a>
											</div>
										</div>
										<div class="col-3-4">
											<div class="wrap-col">
												<h3>Chandan Maurya</h3>
												<p>Hello, I'm Chandan Maurya from Mau, Uttar Pradesh, India. I completed my B.Tech degree in 2023. I have experience in full-stack development, and I worked on a college project called Lucknow Metro Guide (LMT Guide).</p>
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
<script src="js/lightbox-plus-jquery.min.js"></script>
</div>
</body>
</html>