<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Register Validation</title>
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
	<form action="customer_registration_validation.jsp" method="post">
  <div class="container">
    <h1>Customer Registration</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    
    <label for="fn"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="fn" id="fn" required>
    
    <label for="ln"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="ln" id="ln" required>

	<label for="age"><b>Age</b></label>
    <input type="number" placeholder="Enter Age" name="age" id="age" required>
    
    <label><b>Gender</b></label><br>
    <input type="radio" id="male" name="gender" value="male">
	<label for="male">Male</label>
	<input type="radio" id="female" name="gender" value="female">
	<label for="female">Female</label>
	<input type="radio" id="other" name="gender" value="other">
	<label for="other">Other</label><br><br>
	
	<label for="add"><b>Address</b></label><br>	 
    <textarea id="add" rows=6 cols=300 name="add">Enter Address</textarea>
    
    <label for="pn"><b>Phone Number</b></label>
    <input type="number" placeholder="Enter Phone Number" name="pn" id="pn" required>
    
    <button type="submit" class="registerbtn">Register</button>
  </div>
</form>
</body>
</html>