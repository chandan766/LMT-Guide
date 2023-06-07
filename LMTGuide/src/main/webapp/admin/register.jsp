<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.ResultSet" %>
	<%@page import="java.sql.*" %>
	<%@page import="java.io.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>

<%
	String UserName = request.getParameter("name");
	String Password = request.getParameter("pass");

	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
	Statement st = con.createStatement();

	ResultSet rs = st.executeQuery("select * from admin");
	int a=0;
	while(rs.next())
	a++;
	
	int count=a+1;
	Statement st1 = con.createStatement();
	int flag = st1.executeUpdate("insert into admin values('"+count+"','"+UserName+"','"+Password+"')");
	if(flag>0)
	{
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Admin Register Successful!!');");
	   	out.println("</script>");
		response.sendRedirect("dashboard.jsp");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Something went wrong, Please Try Again.');");
	   	out.println("location='dashboard.jsp';");
	   	out.println("</script>");
	}

%>
</body>
</html>