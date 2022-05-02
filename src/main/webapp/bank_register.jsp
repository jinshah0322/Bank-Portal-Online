<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Register Validation</title>
<style>
	* {box-sizing: border-box}

.container {
  padding: 16px;
}

input[type=text], input[type=password] , input[type=number]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

#add{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}
</style>
</head>
<body>
	<form action="bank_register_validation.jsp" method="post">
  <div class="container">
    <h1>Register Yourself To Our Bank</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    
    <label for="un"><b>User Name</b></label>
    <input type="text" placeholder="Enter User Name" name="un" id="un" required>
    
    <label for="am"><b>Amount</b></label>
    <input type="number" placeholder="Enter amount" name="am" id="am" required>
    
    <label for="an"><b>Aadhaar Number</b></label>
    <input type="number" placeholder="Enter Aadhaar Number" name="an" id="an" required>
    
    <label for="acctype"><b>Account Type</b></label>
	<select name="acctpye" id="acctype">
	<option value="savings">Savings</option>
    <option value="recurring">Recurring</option>
  	</select>
    
    <button type="submit" class="registerbtn">Register</button>
  </div>
</form>
</body>
</html>