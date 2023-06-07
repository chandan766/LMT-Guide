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

	String Name =request.getParameter("name");
	String Email=request.getParameter("email");
	String MobileNo=request.getParameter("MobileNo");
	String Date=request.getParameter("date");
	String Subject=request.getParameter("subject");
	String Message=request.getParameter("message");

	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lmrg","root","root");
	
	Statement st=con.createStatement();
	
	String sql="insert into contact(Name,Email,MobileNo,Date,Subject,Message)values('"+Name+"','"+Email+"','"+MobileNo+"','"+Date+"','"+Subject+"','"+Message+"')";
	
	int flag=st.executeUpdate(sql);
	
	
	if(flag==1){
				PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Your Message Send Successfully!!!');");
	   	out.println("location='contact.html';");
	   	out.println("</script>");
	}
	else{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Your Message Not Send Please Try Again.');");
	   	out.println("location='contact.html';");
	   	out.println("</script>");
	}
%>
</body>
</html>