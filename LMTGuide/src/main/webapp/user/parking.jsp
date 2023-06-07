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
		<div id='cssmenu' style="background-color:red;">
			<ul>
			   <li><a href='index.jsp'><span>Home</span></a></li>
			   <li><a href='about.html'><span>About</span></a></li>
			   <li><a href='stations.jsp'><span>Stations</span></a></li>
			   <li><a href='fare.jsp'><span>Fare</span></a></li>
			   <li><a href='traintimetable.jsp'><span>Timming</span></a></li>
			   <li class="active"><a href='parking.jsp'><span>Parking</span></a></li>
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
				<!-----------------content-box-2-------------------->
				<section class="content-box boxstyle-2 box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="header">
								<div class="wrapper">
									<h2 class="color-red">Vehicle Parking Charges</h2>
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
														</tr>
														
														<%i++; } %>
														
												</table>
								</div>
							</div>
						</div>
					</div>
			     
				     		<div class="col-2-4">
						<h2 class="color-red" style="text-align:center;">Parking Terms and Conditions</h2>
							<div class="wrap-col">
								<div class="contact">
									<div id="contact_form">
									<h4>Please read these terms and conditions. They relate to your use of our car parks. If you do not agree with these terms you should not park with us - if you have entered the car park and do not agree with these terms you may pass through the park and exit immediately and you will be charged no fee. If you do not exit you are deemed to have agreed with these terms.</h4>		
		
							</div>
						</div>
					</div>
				     </div>
			      </div>
			</div>
		</section>
		<div class="col-2-4">
					
							<div class="wrap-col">
								<div class="contact">
									<div id="contact_form">
<p>1.Our liability :- <br>&#149;	We are liable to you as set out below. <br>&#149;We have no other liability to you.</p>
 
<p>2.Enforcing terms :-
<br>&#149;	We may enforce these terms against you.
<br>&#149;	The terms can only be varied in writing by our company secretary.
<br>&#149;	Nothing said or done by any of our employees is capable of varying the terms. </p>
 
<p>3.	Your responsibility :-
<br>&#149;	We shall exercise all appropriate skill and care but provided that we do so:
<br>&#149;	we are not then liable for theft or damage to your vehicle or contents or personal injury or death arising from factors which we could not reasonably foresee or are beyond our control, and
<br>&#149;	you are responsible for your actions and damage or injury you cause and you indemnify us against losses we suffer arising from your actions, and
<br>&#149;	you are responsible for your passengers including children and pets who must be kept under your control at all times in the car park.  
<br>&#149;	We have no responsibility for contents left in the vehicle and if you leave contents in your vehicle, you do so at your own risk.</p>
<p> 
4.	Safety in the car park :-
<br>&#149;	You must drive carefully in the car park and obey the signs and our directions. 
<br>&#149;	Before you leave the car park your vehicle must be locked and any security devices in the vehicle should be employed unless requested by our staff not to do so. 
<br>&#149;	If you damage another vehicle in the car park you must report the matter to the appropriate authorities as required by law, and provide your vehicle and contact details to the owner of the other vehicle.
<br>&#149;	After you have parked you must proceed to the nearest exit (you must not exit the car park via a vehicle exit).  
<br>&#149;	You must not remain in the car park except for parking, loading, unloading or removing your vehicle.
<br>&#149;	No work on or cleaning of vehicles is permitted in the car park except with our prior consent.
<br>&#149;	If your vehicle breaks down contact the attendant to ensure that removal or repair of your vehicle does not cause disruption, damage or danger in the car park. 
<br>&#149;	Commercial activity in connection with the vehicle in the car park is prohibited.
 </p>
 <p>
5.	Tickets :-
<br>&#149;	A parking fee is payable each time a vehicle enters this car park.
<br>&#149;	Parking fees are displayed on the tariff board.
<br>&#149;	Your ticket is only valid for the vehicle for which it is issued and for one entry only.
<br>&#149;	A ticket does not entitle you to any particular car park space or priority over other customers.
<br>&#149;	If you cannot find a space for your vehicle then you should exit immediately and no charges will apply.
<br>&#149;	If you cannot produce your ticket on departure you will be charged. We may charge the maximum daily rate for each day or part of the day your vehicle has been in the car park.
<br>&#149;	We have a lien over your vehicle and may refuse to release it if a valid ticket is not produced or the parking fee is not paid and we may continue to hold your vehicle until payment is received for all unpaid parking charges for your vehicle.
<br>&#149;	We are not liable if we release the vehicle to an unauthorised person if we reasonably believe the person was authorised to remove the vehicle.

 </p>
 <p>
6.	Parking rules :-
<br>&#149;	We may refuse admission of any vehicle to the car park for any reason whatsoever.
<br>&#149;	You must park within a marked bay and comply with all signs in the car park.
<br>&#149;	You must not park within a bay marked for a specific purpose unless entitled to do so. 
<br>&#149;	We may remove any vehicle from or within the car park for safety or emergency reasons and may use whatever method we believe reasonable (even if, as a consequence, damage is caused to your vehicle). We may charge a reasonable fee if your vehicle is removed if it is considered a hindrance or a hazard to other users of the car park.
 </p>
 <p>
7.	Complaints :-
<br>&#149;	If your vehicle is damaged or you lose your vehicle or its contents while in this car park, you should immediately inform a member of our staff or notify Customer Service at customerservice@metroparking.com.au 
<br>&#149;	In the case of theft, inform the police and notify your insurer.</p>
 <p>
8.	Abandoned vehicles :-
<br>&#149;	We may sell any vehicle, pursuant to our lien, which we reasonably believe to have been abandoned.
<br>&#149;	A vehicle which has been in the car park for more than 28 days without prior notification and not known to be covered by a current valid ticket may be treated as abandoned.
 </p>
 <p>
9.	Interpretation :- 
<br>&#149; When we say "us" "we" and "our" it means Metro Parking Management Pty Ltd and "vehicle" means the vehicle (its equipment and accessories) which enters into the car park.
You enter into this Agreement with us on the basis of these terms. </p>
								</div>
							</div>
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
								<p>Copyright - <a href="http://www.zerotheme.com" target="_blank" rel="nofollow">L.M.T.Guide</a> designed by chandan maurya</p>
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