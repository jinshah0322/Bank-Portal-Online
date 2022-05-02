<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body>
	<%
	String email, pass, amount, aadhaar, account_type, u_name;
	email = request.getParameter("email");
	pass = request.getParameter("psw");
	amount = request.getParameter("am");
	aadhaar = request.getParameter("an");
	account_type = request.getParameter("acctpye");
	u_name = request.getParameter("un");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/prac12", "root", "root");
	PreparedStatement p = con.prepareStatement("insert into bank_register values(?,?,?,?,?,?)");
	p.setString(1, email);
	p.setString(2, pass);
	p.setString(3, amount);
	p.setString(4, aadhaar);
	p.setString(5, account_type);
	p.setString(6, u_name);
	p.executeUpdate();
	RequestDispatcher rd = request.getRequestDispatcher("bank_login.jsp");
	rd.forward(request, response);
	%>
</body>
</html>