<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
	<%@page import="java.io.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
<%
	
	String StationName =request.getParameter("StationName");
	String StationID=request.getParameter("StationID");
	String StationCode=request.getParameter("StationCode");
	String corridor=request.getParameter("corridor");
	String Distance=request.getParameter("Distance");
	String ContactNo=request.getParameter("ContactNo");
	String opendate=request.getParameter("opendate");
	String nearplacess=request.getParameter("nearplacess");
	String placeid=request.getParameter("placeid");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
	
	Statement st=con.createStatement();
	
	String sql="insert into stations(S_ID,StationName,StationCode,Corridor,Distance,ContactNo,OpeningDate,Placess)values('"+StationID+"','"+StationName+"','"+StationCode+"','"+corridor+"','"+Distance+"','"+ContactNo+"','"+opendate+"','"+nearplacess+"','"+placeid+"')";
	
	int flag=st.executeUpdate(sql);
	
	
	if(flag==1){
				PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Station Added Successfully!!!');");
	   	out.println("location='addstation.jsp';");
	   	out.println("</script>");
	}
	else{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Station Not Added, Please Try Again.');");
	   	out.println("location='addstation.jsp';");
	   	out.println("</script>");
	}
%>
</body>
</html>