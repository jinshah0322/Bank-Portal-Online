<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page 1</title>
</head>
<body>
	<%
		RequestDispatcher rd=request.getRequestDispatcher("bank_register.jsp");
		out.println("<h3 style=\"color:red;text-align:center;margin-top:-560px\">Duplicate Entry</h3>");
		rd.include(request, response);
	%>
</body>
</html>