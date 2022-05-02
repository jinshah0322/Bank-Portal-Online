<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
	.deposit:hover{
		background:#0eed9b !important;
	}
	.withdraw:hover{
		background:#4ab1f0 !important;
	}
	.b:hover{
		background:#f1f1f1 !important;
		border-radius:18px;
	}
	.session{
		font-size:25px !important;
    	position: fixed;
      	top: 25px;
      	left: 40px;
      	width: 250px;
      	font-family:arial;
	}
	
</style>
</head>
<body>
	<div style="text-align:right">
		<a href="invalidate.jsp"><button class="b" type="submit" style="width:150px;height:50px;background:none;border:none;font-size:20px;">Sign Out</button></a>
	</div>
	<div style="margin-top:200px;margin-left:250px;">
		<a href="deposit.jsp"><button class="deposit" type="submit" style="width:400px;height:200px;background:#f1f1f1;border:solid 1px #f1f1f1;font-size:30px;background:#04AA6D;color:white;border-radius:42px">Deposit</button></a>
	</div>
	<div style="margin-left:800px;margin-top:-200px">
		<a href="withdraw.jsp"><button class="withdraw" type="submit" style="width:400px;height:200px;background:#4ab1f0;border:solid 1px #f1f1f1;font-size:30px;background:#1DA1F2;color:white;border-radius:42px;">Withdraw</button></a>
	</div>
	<%
		String n="Welcome "+(String)session.getAttribute("user_name");
	%>
		<a class="session"><%=n%></a>
</body>
</html>