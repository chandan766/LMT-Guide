<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
        .vl {
            border-left: 18px solid red;
            height: 80px;
          }
          ul {
            list-style: none;
            margin: 0px;
            padding: 0;
            font: normal 16px/22px Arial;
            color: #999;
          }
          li {
            overflow: hidden;
            position: relative;
            padding: 0 0 20px 35px;
            left: -15px;
            top:5px;
            }
            li::before {
              content: '';
              width: 20px;
              height: 999px;
              border-width: 2px 0 0 2px;
              }
              li:last-child::before {
                border-width: 2px 0 0;
                }
            li::after {
              content: '';
              position: absolute;
              left: 0;
              top: 0;
              width: 10px;
              height: 10px;
              background: #fff;
              border: 2px solid lightblue;
              border-radius: 50%;
              }
            li.current,
            li.passed {
              color: #000;
              }
              li.current::before {
                border-top-color: white;
                }
              li.current::after {
                border-color: white;
                background: dodgerblue;
                }
              li.passed::before,
              li.passed::after {
                border-color: dodgerblue;
                }
    </style>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		String SStart = request.getParameter("statstation");
		String SEnd = request.getParameter("endstation");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
		Statement st=con.createStatement();
	%>
		<center>
		<div class="row">
			<div class="col-1-1">
				<div class="row post">
					<div class="col-1-12">
						<div class="wrap-col">
							<table style="border-style: solid; border-width: 3px; bordater-color:red;border-collapse: collapse;">
								
								<caption style='background-color:red; padding:5px;'><h1>List of Stations  From
								<%ResultSet rsStart = st.executeQuery("SELECT * FROM stations where S_ID='"+SStart+"'");
									while(rsStart.next()){ %>
								 <%=rsStart.getString(2)%><input id="stationplace" value="<%=rsStart.getString(9)%>" style="display:none;"><%}%> To 
								 <%ResultSet rsEnd = st.executeQuery("SELECT * FROM stations where S_ID='"+SEnd+"'");
									while(rsEnd.next()){ %>
								 <%=rsEnd.getString(2)%><%}%>
								 </h1></caption>
								
								 <tr>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>Station Name <br> (distance in meter)</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Near By Places</th>
								</tr>
									<center>
									<%
										ResultSet rs=st.executeQuery("SELECT * FROM stations where S_ID between '"+SStart+"' and '"+SEnd+"'");
										int i = 0;
										while(rs.next()){
											i++;
									%>
									<tr>
										<td style="border:0px solid red; align:left; margin-left:5px; margin-right:5px; padding:0 0 0 10px;border-spacing:0px;">
										<ul class="vl">
										<li class="current"><%=rs.getString(2)%>(<%=rs.getString(3)%>)<br><small><i><%=rs.getString(5)%></i></small></li>
      									</ul>
										</td>
										<input name="sid" value="<%=rs.getString(1)%>" style="display:none;">
										<input name="statstation" value="<%=rs.getString(9)%>" style="display:none;">
										<input name="endstation" value="<%=SEnd%>" style="display:none;">
										<td style="border-left:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><p style="margin-top:-25px;"><%=rs.getString(8)%></p></td>
										
									</tr>
									<%}%>
									
							</table> <br><br>
							<iframe width="800" height="500" frameborder="0" style="border:0" id="showmap" src=""></iframe>
							<br><br>
							<form action="index.jsp" method="post">
								<input type="submit" value="Return" style="width:170px;height:40px;color:white;background-color:red;border-radius:5px;font-family:max-height;font-size:15px;" href="index.jsp">
							</form>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</center>
	<script>
		var sp = document.getElementById("stationplace").value;		
		  if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(showPosition);
		  } else { 
		    alert("Geolocation is not supported by this browser.");
		  }
			
		function showPosition(position) {
			  var lat = position.coords.latitude;
			  var log =  position.coords.longitude;
			  document.getElementById("showmap").src="https://www.google.com/maps/embed/v1/directions?&origin="+lat+","+log+"%20Location&destination=place_id:"+sp+"&key=AIzaSyC-5CY9mOCeg5Y3IhPqi_Yd0-DZtWrJl-E";
			}
	</script>
</body>
</html>