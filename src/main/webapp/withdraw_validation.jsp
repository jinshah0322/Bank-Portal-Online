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
<title>Withdraw Validation</title>
</head>
<body>
	<%
		String reciever,sender;
		int amount,count=0,counter=0;
		sender=request.getParameter("su");
		amount=Integer.parseInt(request.getParameter("a"));
		reciever=(String)session.getAttribute("user_name");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/prac12","root","root");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select * from bank_register");
		ResultSet rs1=stmt1.executeQuery("select * from bank_register");
		while(rs.next())
		{
			if(sender.equals(rs.getString("User_Name")))
			{					
				if(amount<=rs.getInt("Amount"))
				{
					rs.updateInt("Amount", (rs.getInt("Amount")-amount));
					rs.updateRow();
					count+=1;
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("withdraw.jsp");
					out.println("<h3 style=\"color:red;text-align:center;margin-top:-325px\">Insufficient Balance</h3>");
					rd.include(request, response);
				}
				counter+=1;
				break;
			}
		}	
		while(rs1.next())
		{
			if(reciever.equals(rs1.getString("User_Name")) && count==1)
			{
				rs1.updateInt("Amount", (rs1.getInt("Amount")+amount));
				rs1.updateRow();
				RequestDispatcher rd=request.getRequestDispatcher("withdraw.jsp");
				out.println("<h3 style=\"color:green;text-align:center;margin-top:-325px\">Successful Transaction</h3>");
				rd.include(request,response);
				break;
			}
		}
		if(counter==0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("withdraw.jsp");
			out.println("<h3 style=\"color:red;text-align:center;margin-top:-325px\">Wrong Username</h3>");
			rd.include(request, response);
		}
	%>
</body>
</html>