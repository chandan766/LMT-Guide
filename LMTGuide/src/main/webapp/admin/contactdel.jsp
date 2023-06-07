<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@page import="java.io.*"%>
	<%@page import="javax.sql.*"%>
	<%@page import="java.sql.Connection"%>
	<%
	String SN =request.getParameter("deleteid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
	Statement st=con.createStatement();
	
	st.executeUpdate("delete from contact where SrNo ='"+SN+"'");
	boolean flag=true;
	if(flag==true)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Contact Deleted Successfully!!!');");
	   	out.println("location='viewcontact.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Contact Not Deleted Please Try Again. ');");
	   	out.println("location='viewcontact.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>