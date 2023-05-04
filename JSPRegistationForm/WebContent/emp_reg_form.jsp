<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration Form</title>
</head>
<body>
	<h2 style="color: blue" align="center">Software Company</h2>
	<h4 style="color: green" align="center">Employee Registration Form</h4>
	<form method="post" action="./display.jsp">
		<center>
			<table>
				<tr>
					<td>Employee Id</td>
					<td><input type="text" name="eid" /></td>
				</tr>
				<tr>
					<td>Employee Name</td>
					<td><input type="text" name="ename" /></td>
				</tr>
				<tr>
					<td>Employee Salary</td>
					<td><input type="text" name="esal" /></td>
				</tr>
				<tr>
					<td>Employee Address</td>
					<td><input type="text" name="eaddr" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Display" /></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>