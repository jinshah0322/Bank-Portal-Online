<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Table</title>
	<style>
		.b:hover{
			background:#f1f1f1 !important;
			border-radius:18px;
			}
	</style>
</head>
<body>
	<a href="invalidate1.jsp"><button class="b" type="submit" style="width:150px;height:50px;background:none;border:none;font-size:20px;margin-left:1370px">Sign Out</button></a>
	<%
	String u="admin",p="admin",u1,p1;
	u1=request.getParameter("un");
	p1=request.getParameter("psw");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/prac12", "root", "root");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = stmt.executeQuery("select * from bank_register");
	Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs1 = stmt1.executeQuery("select * from cust_register");
	if(u.equals(u1) && p.equals(p1))
	{
		out.print("<h1>Bank Registration Details</h1>");
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table border=1>");
		while (rs.next()) 
		{
			out.print("<tr>");
			out.print("<th>" + rs.getString(1));
			out.print("</th>");
			out.print("<th>" + rs.getString(2));
			out.print("</th>");
			out.print("<th>" + rs.getString(3));
			out.print("</th>");
			out.print("<th>" + rs.getString(4));
			out.print("</th>");
			out.print("<th>" + rs.getString(5));
			out.print("</th>");
			out.print("<th>" + rs.getString(6));
			out.print("</th>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
		out.print("<h1>Customer Registration Details</h1>");
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table border=1>");
		while (rs1.next()) 
		{
			out.print("<tr>");
			out.print("<th>" + rs1.getString(1));
			out.print("</th>");
			out.print("<th>" + rs1.getString(2));
			out.print("</th>");
			out.print("<th>" + rs1.getString(3));
			out.print("</th>");
			out.print("<th>" + rs1.getString(4));
			out.print("</th>");
			out.print("<th>" + rs1.getString(5));
			out.print("</th>");
			out.print("<th>" + rs1.getString(6));
			out.print("</th>");
			out.print("<th>" + rs1.getString(7));
			out.print("</th>");
			out.print("<th>" + rs1.getString(8));
			out.print("</th>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
		out.println("<h3 style=\"color:red;text-align:center;margin-top:-250px\">Wrong Credentials</h3>");
		rd.include(request, response);
	}
	%>
</body>
</html>