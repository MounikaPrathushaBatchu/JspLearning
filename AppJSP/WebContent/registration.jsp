<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<h2 style = "color:blue" align = "center">Software Company</h2>
<h4 style = "color:green" align = "center">User Registration Form</h4>
<form method = "POST" action = "./registration.jsp">
<center>
<table>
<tr>
	<td>User Name : </td>
	<td><input type = "text" name = "uname" /></td>
</tr>
<tr>
	<td>Password : </td>
	<td><input type = "password" name = "upwd" /></td>
</tr>
<tr>
	<td>Email Id : </td>
	<td><input type = "text" name = "uemail" /></td>
</tr>
<tr>
	<td>Mobile Number : </td>
	<td><input type = "text" name = "umobile" /></td>
</tr>
<tr>
	<td><input type = "submit" value = "Registration" /></td>
</tr>
</table>
</center>
</form>
</body>
</html>