<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%@page import="java.sql.*" %>
	<%@page import="java.io.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
<%

	String  VechileName=request.getParameter("VechileName");
	String L6Hours=request.getParameter("L6Hours");
	String L12Hours=request.getParameter("L12Hours");
	String Daily=request.getParameter("Daily");
	String Monthly=request.getParameter("Monthly");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
	
	Statement st=con.createStatement();
	
	String sql="insert into parking(VechileName,Less6hours,Less12hours,Daily,Monthly)values('"+VechileName+"','"+L6Hours+"','"+L12Hours+"','"+Daily+"','"+Monthly+"')";
	
	int flag=st.executeUpdate(sql);
	
	
	if(flag==1){
				PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Parking Charges Added Successfully!!!');");
	   	out.println("location='parkingcharges.jsp';");
	   	out.println("</script>");
	}
	else{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Parking Charges Not Added, Please Try Again.');");
	   	out.println("location='parkingcharges.jsp';");
	   	out.println("</script>");
	}
%>
</body>
</html>