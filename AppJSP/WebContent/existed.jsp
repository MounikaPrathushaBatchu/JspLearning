<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Existed Checking page</title>
</head>
<body>
<h2 style = "color:blue" align = "center">Software Company</h2>
<h4 style = "color:green" align = "center">User <%= session.getAttribute("operation") %> Status</h4>
<h2 style = "color:blue" align = "center">User existed already</h2>
<h4 align = "center">
<a href = "./login.jsp">Login Form</a>
</h4>
</body>
</html>