<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw</title>
<style>
	form {
  border: 3px solid #f1f1f1;
}

input[type=text], input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

a {
  color: dodgerblue;
}

.signup {
  background-color: #f1f1f1;
  text-align: center;
}

@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}
</style>
</head>
<body>
<h1>Withdraw</h1>
    <hr>
	<form action="withdraw_validation.jsp" method="post">
  <div class="container">
    <label for="uname"><b>Sender's Username</b></label>
    <input type="text" placeholder="Enter usernsme" name="su" required>

    <label for="psw"><b>Amount</b></label>
    <input type="number" placeholder="Enter amount" name="a" required>
    <button type="submit">Commit</button>
  </div>
  <div class="container signup">
    <p>Want to go to Dashboard? <a href="dashboard.jsp">Click Here</a>.</p>
  </div>
</form>
</body>
</html>