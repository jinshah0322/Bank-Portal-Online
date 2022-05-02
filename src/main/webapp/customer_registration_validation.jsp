<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body>
	<%
		String email,pass,fn,ln,age,gender,add,pn;
		email=request.getParameter("email");
		pass=request.getParameter("psw");
		fn=request.getParameter("fn");
		ln=request.getParameter("ln");
		age=request.getParameter("age");
		gender=request.getParameter("gender");
		add=request.getParameter("add");
		pn=request.getParameter("pn");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/prac12","root","root");		
		PreparedStatement p=con.prepareStatement("insert into cust_register values(?,?,?,?,?,?,?,?)");
		p.setString(1, email);
		p.setString(2, pass);
		p.setString(3, fn);
		p.setString(4, ln);
		p.setString(5, age);
		p.setString(6, gender);
		p.setString(7, add);
		p.setString(8, pn);
		p.executeUpdate();
		RequestDispatcher rd=request.getRequestDispatcher("customer_login.jsp");
		rd.forward(request, response);
	%>
</body>
</html>