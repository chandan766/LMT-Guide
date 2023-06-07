<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*"%>
	<% 
		if(session!=null){
			request.getSession().setAttribute("admin", null);
		   	PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Your Are Log Out Successfully!!!');");
		   	out.println("location='../user/login.html';");
		   	out.println("</script>");
		}
		else{
			request.getSession().setAttribute("admin", null);
		   	PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Your Are Log Out Successfully!!!');");
		   	out.println("location='../user/login.html';");
		   	out.println("</script>");
		}
	 %>

</body>
</html>