<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Out</title>
</head>
<body>
	<%
		session.invalidate();
		out.println("<h3 style=\"color:red;text-align:center;margin-top:-330px;\">Successfully Logged out</h3>");
		RequestDispatcher rd1=request.getRequestDispatcher("admin.jsp");
		rd1.include(request,response);
	%>
</body>
</html>