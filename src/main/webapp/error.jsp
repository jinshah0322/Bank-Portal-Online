<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	<%
		RequestDispatcher rd=request.getRequestDispatcher("customer_register.jsp");
		out.println("<h3 style=\"color:red;text-align:center;margin-top:-860px\">Duplicate Entry</h3>");
		rd.include(request, response);
	%>
</body>
</html>