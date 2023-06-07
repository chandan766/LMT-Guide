<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%@page import="java.math.*;" %>
	<%
		String SStart = request.getParameter("stationstart");
		String SEnd = request.getParameter("stationend");
		
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
							<table style="border-style: solid; border-width: 3px; bordater-color:red;">
								
								<caption style='background-color:red; padding:5px;'><h1>List of Stations  From
								<%ResultSet rsStart = st.executeQuery("SELECT * FROM stations where S_ID='"+SStart+"'");
									while(rsStart.next()){ %>
								 <%=rsStart.getString(2)%><%}%> To 
								 <%ResultSet rsEnd = st.executeQuery("SELECT * FROM stations where S_ID='"+SEnd+"'");
									while(rsEnd.next()){ %>
								 <%=rsEnd.getString(2)%><%}%>
								 </h1></caption>
								
								<tr>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>S.No.</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;" rowspan='1'>Station Name</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Distance(m)</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Fare</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Contact No</th>
									<th style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"  colspan='1'>Near By Places</th>
								</tr>
									<center>
									<%
										ResultSet rs=st.executeQuery("SELECT * FROM stations where S_ID between '"+SStart+"' and '"+SEnd+"'");
										int i = 0;
										float TF = 0;
										float TD = 0;
										while(rs.next()){
											i++;
									%>
									<tr>
										<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=i%></td>
										<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(2)%>(<%=rs.getString(3)%>)</td>
										
										<% if(i==1){%>
											<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">0.00</td>
										 <% } else { %>
											<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(5)%></td>
											<% TD = Math.round(TD+rs.getFloat(5));%>
										<%} %>
										<%!float fair(String dis)
											{
												float D = Float.parseFloat(dis);
												float n = Math.round((D*0.50f)/100);
												return n;
											}%>
											
										<% if(i==1){%>
											<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;">0.00</td>
										 <% } else { %>
											<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%= fair(rs.getString(5))%></td>
											<% TF = TF+fair(rs.getString(5));%>
										<% }%>
										<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(6)%></td>
										<td style="border:1px solid red; align:left; margin-left:5px; margin-right:5px; padding:5px;"><%=rs.getString(8)%></td>
									</tr>
									
									<%} %>
									
							</table>
							<caption style='background-color:red; padding:5px;'><h2>Total Distance Between These Two Stations is <%=TD %>m and Fare  is Rs.<%=TF %></h2></caption>
							<br/>
							<form action="fare.jsp" method="post">
								<input type="submit" value="Return" style="width:170px;height:40px;color:white;background-color:red;border-radius:5px;font-family:max-height;font-size:15px;" href="index.jsp">
							</form>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</center>

</body>
</html>