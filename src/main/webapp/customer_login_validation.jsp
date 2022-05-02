<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Validation</title>
</head>
<body>
	<%
		String email,pass;
		int counter=0;
		email=request.getParameter("email");
		pass=request.getParameter("psw");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/prac12","root","root");
		PreparedStatement p=con.prepareStatement("insert into cust_login values(?,?)");
		p.setString(1, email);
		p.setString(2, pass);
		p.executeUpdate();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from cust_register");
		while(rs.next())
		{
			if(email.equals(rs.getString("Email")) && pass.equals(rs.getString("Pass")))
			{
				RequestDispatcher rd=request.getRequestDispatcher("bank_login.jsp");
				rd.forward(request,response);
				counter+=1;
			}
		}
		if (counter==0)
		{
			out.println("<h3 style=\"color:red;text-align:center;margin-top:-330px;\">Wrong Credentials</h3>");
			RequestDispatcher rd1=request.getRequestDispatcher("customer_login.jsp");
			rd1.include(request,response);
		}
	%>
</body>
</html>