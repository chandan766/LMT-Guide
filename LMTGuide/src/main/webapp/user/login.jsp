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

	ResultSet rs = st.executeQuery("select * from admin where adminName='"+UserName+"' and password='"+Password+"'");
	int a=0;
	while(rs.next())
	a++;
	if(a>0)
	{
		HttpSession logss = request.getSession();
		logss.setAttribute("admin", UserName);
		response.sendRedirect("../admin/dashboard.jsp");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('User Name or Password is Incorrect, Please Try Again.');");
	   	out.println("location='login.html';");
	   	out.println("</script>");
	}

%>
</body>
</html>